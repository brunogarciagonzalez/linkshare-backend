class TagsController < ApplicationController
  def all_tags
    # return all tags, sorted alphabetically
    @tags = Tag.order('title ASC')

    render json: {tags: @tags}, status: 200
  end

  def construct_tag
    # add new tag (formatted) to database if it is validated
    # return json with status and either new tag || errors array
    title_from_params = strong_construct_tag_params[:title]
    @tag = Tag.new(title: format_title(title_from_params))

    if @tag.save
      render json: {status: "success", action: "construct_tag", tag: @tag}
    else
      render json: {status: "failure", errors: @tag.errors.full_messages}
    end
  end

  def destroy_tag
    # destroy tag & link_tag_joins with given tag.id
    # if this is only tag for a link, deactivate link & its related db items
    tag_id_from_params = strong_deactivate_tag_params[:id]
    @tag = Tag.find(tag_id_from_params)

    if @tag
      @links = @tag.links

      @links.each do |link|

        if (link.tags.length == 1) && (link.tags[0].id == @tag.id)
          deactivate_link_and_associated_db_items(link)
        end

        destroy_link_tag_join(link)
      end

      @tag.destroy

      render json: {status: "success", action: "destroy_tag", tag: @tag}, status: 200
    else
      render json: {status: "failure", action: "destroy_tag", details: "tag not found (by id)"}, status: 200
    end

  end

  def update_tag
    # will go through validations-check
    tag_id_from_params = strong_update_tag_params[:id]
    new_tag_title_from_params = strong_update_tag_params[:new_title]

    @tag = Tag.find(tag_id_from_params)

    if @tag.update(title: format_title(new_tag_title_from_params))
      render json: {status: "success", action:"update_tag", tag: @tag}, status: 200
    else
      render json: {status: "failure", action:"update_tag", errors: @tag.errors.full_messages}, status: 200
    end
  end

  private
  #### params-related ####
  def strong_construct_tag_params
    params.require(:tag).permit(:title)
  end

  def strong_deactivate_tag_params
    params.require(:tag).permit(:id)
  end

  def strong_update_tag_params
    params.require(:tag).permit(:id, :new_title)
  end
  #### helper functions ####
  def format_title(title)
    title.gsub(/\w+/) do |word|
      word.capitalize
    end
  end

  def destroy_link_tag_join(link)
    link.link_tag_joins.each do |join|
      if join.tag_id == @tag.id
        join.destroy
      end
    end
  end

  def deactivate_link_and_associated_db_items(link)
    link.update(active: false)
    deactivate_all_reviews(link)
    deactivate_all_user_shares(link)
  end

  #### functions that are helpers of helper functions ####
  def deactivate_all_reviews(link)
    link.reviews.each do |review|
      review.update(active: false)
    end
  end

  def deactivate_all_user_shares(link)
    link.user_shares.each do |user_share|
      user_share.update(active: false)
    end
  end
end

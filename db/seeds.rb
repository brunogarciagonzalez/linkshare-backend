# User(id: integer, username: string, password_digest: string, email: string)
User.create(username: "user1", password: "1&Password", email: "user1@gmail.com")
User.create(username: "user2", password: "2&Password", email: "user2@gmail.com")
User.create(username: "user3", password: "3&Password", email: "user3@gmail.com")
User.create(username: "user4", password: "4&Password", email: "user4@gmail.com")
User.create(username: "user5", password: "5&Password", email: "user5@gmail.com")
# Tag(id: integer, title: string)
Tag.create(title: "Example")
Tag.create(title:"Cannabis")
Tag.create(title:"Social Media")
Tag.create(title: "Features")
Tag.create(title: "Finance")
Tag.create(title: "Shopping")
Tag.create(title: "Jobs")
Tag.create(title: "Internet")
Tag.create(title: "Software")
Tag.create(title: "Programming")
Tag.create(title: "Computer Games")
Tag.create(title: "Console Games")
Tag.create(title: "Board Games")
Tag.create(title: "News")
Tag.create(title: "TV")
Tag.create(title: "Radio")
Tag.create(title: "Entertainment")
Tag.create(title: "Music")
Tag.create(title: "Movies")
Tag.create(title: "Recreational")
Tag.create(title: "Sports")
Tag.create(title: "Travel")
Tag.create(title: "Autos")
Tag.create(title: "Motorcycles")
Tag.create(title: "Outdoors")
Tag.create(title: "Health")
Tag.create(title: "Diseases")
Tag.create(title: "Drugs")
Tag.create(title: "Fitness")
Tag.create(title: "Government")
Tag.create(title: "Countries")
Tag.create(title: "People")
Tag.create(title: "Environment")
Tag.create(title: "Religion")
Tag.create(title: "College & University")
Tag.create(title: "Education: K - 12")
Tag.create(title: "Photography")
Tag.create(title: "History")
Tag.create(title: "Literature")
Tag.create(title: "Animals")
Tag.create(title: "Astronomy")
Tag.create(title: "Engineering")
Tag.create(title: "Languages")
Tag.create(title: "Archaeology")
Tag.create(title: "Psychology")
Tag.create(title: "Dictionaries")

Link.create(url: "https://google.com")
Link.create(url: "https://yahoo.com")
Link.create(url: "https://bing.com")
Link.create(url: "https://linkshare.io")

# UserShares for link 1:
UserShare.create(user_id: 1, review_id: 1, link_id: 1)
UserShareTagJoin.create(user_share_id: 1, tag_id: 1)
LinkTagJoin.create(link_id: 1, tag_id: 1)
Review.create(user_share_id: 1, reviewer_id: 1, link_id: 1, content: "example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example", rating: 8)

UserShare.create(user_id: 2, review_id: 2, link_id: 1)
Review.create(user_share_id: 2, reviewer_id: 2, link_id: 1, content: "test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test", rating: 5)
UserShareTagJoin.create(user_share_id: 2, tag_id: 1)

UserShare.create(user_id: 3, review_id: 3, link_id: 1)
Review.create(user_share_id: 3, reviewer_id: 3, link_id: 1, content: "hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello", rating: 10)
UserShareTagJoin.create(user_share_id: 3, tag_id: 1)

UserShare.create(user_id: 4, review_id: 4, link_id: 1)
Review.create(user_share_id: 4, reviewer_id: 4, link_id: 1, content: "one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more", rating: 1)
UserShareTagJoin.create(user_share_id: 4, tag_id: 1)

# UserShares for link 2:

UserShare.create(user_id: 1, review_id: 5, link_id: 2)
UserShareTagJoin.create(user_share_id: 5, tag_id: 1)
LinkTagJoin.create(link_id: 2, tag_id: 1)
Review.create(user_share_id: 5, reviewer_id: 1, link_id: 2, content: "example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example", rating: 5)

UserShare.create(user_id: 2, review_id: 6, link_id: 2)
Review.create(user_share_id: 6, reviewer_id: 2, link_id: 2, content: "test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test", rating: 10)
UserShareTagJoin.create(user_share_id: 6, tag_id: 1)

UserShare.create(user_id: 3, review_id: 7, link_id: 2)
Review.create(user_share_id: 7, reviewer_id: 3, link_id: 2, content: "hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello", rating: 3)
UserShareTagJoin.create(user_share_id: 7, tag_id: 1)

UserShare.create(user_id: 4, review_id: 8, link_id: 2)
Review.create(user_share_id: 8, reviewer_id: 4, link_id: 2, content: "one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more", rating: 1)
UserShareTagJoin.create(user_share_id: 8, tag_id: 1)

# UserShares for link 3:

UserShare.create(user_id: 1, review_id: 9, link_id: 3)
UserShareTagJoin.create(user_share_id: 9, tag_id: 1)
LinkTagJoin.create(link_id: 3, tag_id: 1)
Review.create(user_share_id: 9, reviewer_id: 1, link_id: 3, content: "example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example example", rating: 3)

UserShare.create(user_id: 2, review_id: 10, link_id: 3)
Review.create(user_share_id: 10, reviewer_id: 2, link_id: 3, content: "test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test", rating: 10)
UserShareTagJoin.create(user_share_id: 10, tag_id: 1)

UserShare.create(user_id: 3, review_id: 11, link_id: 3)
Review.create(user_share_id: 11, reviewer_id: 3, link_id: 3, content: "hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello", rating: 3)
UserShareTagJoin.create(user_share_id: 11, tag_id: 1)

UserShare.create(user_id: 4, review_id: 12, link_id: 3)
Review.create(user_share_id: 12, reviewer_id: 4, link_id: 3, content: "one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more one more", rating: 4)
UserShareTagJoin.create(user_share_id: 12, tag_id: 1)

# Comments
TagComment.create(tag_id: 1, tag_commenter_id: 2, content: "dope")
TagComment.create(tag_id: 1, tag_commenter_id: 1, content: "ganja")
ReviewComment.create(review_id: 1, review_commenter_id: 2, content: "Exemplary review!")

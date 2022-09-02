class User < ApplicationRecord

    has_one_attached :profile_picture
     
    has_many :follower_follows, foreign_key: :following_id, class_name: 'Follow'
    has_many :followers, through: :follower_follows

    has_many :followings_follows, foreign_key: :follower_id, class_name: 'Follow'
    has_many :followings, through: :follower_followings

    has_many :posts

    has_many :comments

    has_many :liked_posts
    has_many :liked_comments


end
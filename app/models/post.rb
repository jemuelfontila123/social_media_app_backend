class Post < ApplicationRecord 
    
    belongs_to :user 

    has_many :comments

    has_many :liked_post

    has_one_attached :picture
end
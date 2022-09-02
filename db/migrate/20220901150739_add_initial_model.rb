class AddInitialModel < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |u|
      u.string :email
      u.string :first_name
      u.string :last_name 
      u.integer :gender
      u.datetime :birthday

      u.timestamps
    end 

    create_table :posts do |p|
      p.string :body 
      p.belongs_to :user, foreign_key: true

      p.timestamps
    end

    create_table :comments do |c|
      c.string :text  
      c.belongs_to :user, foreign_key: true 
      c.belongs_to :post, foreign_key: true

      c.timestamps
    end

    create_table :liked_comments do |lc|
      lc.belongs_to :comment, foreign_key: true 
      lc.belongs_to :user, foreign_key: true 
    end

    create_table :liked_posts do |lp|
      lp.belongs_to :post, foreign_key: true 
      lp.belongs_to :user, foreign_key: true 
    end 

    create_table :follows do |f|
      f.integer :follower_id, foreign_key: true 
      f.integer :following_id, foreign_key: true 

      f.timestamps
    end


  end

end

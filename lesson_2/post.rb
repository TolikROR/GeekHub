require_relative 'user'
# Post
class Post
  include ExportCSV
  @@posts_all = []
  def initialize(title, body, user)
    @title = title
    @body = body
    @user = user
    puts @user
    @owner_email = user
  end

  attr_accessor :title, :body, :owner_email, :user

  def self.new_post(title, body, user)
    post = Post.new(title, body, user)
    @@posts_all.push(post)
    puts "added new post is #{post.title}"
  end

  def remove_user(title)
    @@posts_all.map! do |e|
      if title == e.title
        @@posts_all.delete(e)
        puts "post is #{title} removed"
      end
    end
  end

  def update_post(title, body, user)
    @@posts_all.map do |e|
      if e.title == title
        e.body = body
        e.owner_email = user.email
      end
    end
  end

  def self.posts_all
    @@posts_all.each { |e| puts "#{e.title}, #{e.body}, #{e.user.email}" }
  end
end

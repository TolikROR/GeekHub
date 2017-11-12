# create a class "User" with "name", "age" and "email" attributes
require_relative 'export_csv'
# User class
class User
  include ExportCSV
  @@users_all = []
  def initialize(name, age, email)
    @name = name
    @age = age
    @email = email
  end

  attr_accessor :name, :age, :email

  def self.add_user(name, age, email)
    user = User.new(name, age, email)
    @@users_all.push(user)
    puts "added new user is #{user.name}"
  end

  def remove_user(name)
    @@users_all.map! do |e|
      if name == e.name
        @@user_all.delete(e)
        puts "user is #{name} removed"
      end
    end
  end

  def update_user(name, new_age, new_email)
    @@users_all.map do |e|
      if e.name == name
        e.age = new_age
        e.email = new_email
      end
    end
  end

  def self.users_all
    @@users_all.each { |e| puts "#{e.name}, #{e.age}, #{e.email}" }
  end
end

User.add_user('Tom', 22, 'example@gmail.com')
User.add_user('Bob', 32, 'example2@gmail.com')
User.add_user('Jack', 27, 'exampl3@gmail.com')
puts '--------------'
User.users_all[0].user_csv
User.users_all_csv

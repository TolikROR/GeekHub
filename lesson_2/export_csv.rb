require 'csv'
# module CSV methods
module ExportCSV
  def user_csv
    CSV.open("#{@name}.csv", 'a+') do |csv|
      csv << %w[Name Age Email]
      csv << [@name, @age, @email]
    end
  end

  def self.included(my_method)
    my_method.extend MethodsCSV
  end
  # module for method class
  module MethodsCSV
    def users_all_csv
      users = class_variable_get(:@@users_all)

      CSV.open('users.csv', 'a+') do |csv|
        csv << %w[Name Age Email]
        users.each do |user|
          csv << [user.name, user.age, user.email]
        end
      end
    end
  end
end

require "chicago_employees/version"
require 'unirest'
module ChicagoEmployees
  class Employee
  	def initialize(input_options)
  		@title = input_options["job_titles"]
  		@department = input_options["department"]
  		@name = input_options["name"]
  		@salary = input_options["employee_annual_salary"].to_f
  	end

  	def self.all
  		ruby_data = []
  		bulk_data = Unirest.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json").body
  		bulk_data.each do |employee|
  			ruby_data << Employee.new(employee)
  		end
  		ruby_data
  	end
  end
end

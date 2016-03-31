require "chicago_employees/version"
require 'unirest'
module ChicagoEmployees
  class Employee
  	def self.all
  		ruby_data = []
  		bulk_data = Unirest.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json").body
  	end
  end
end

require_relative "logger/version"
require 'singleton'

module Logger
  module Program
  	class MainProgram
  		include Singleton

  		attr_accessor :model_class_name, :model_date_time, :model_attributes
  		attr_accessor :controller_class_name, :controller_date_time, :controller_url_path, :controller_action
  		attr_accessor :save_to_file, :dir_path

  		def initilaze()
  			model_class_name = @@model_class_name
  			model_date_time = @@model_date_time
  			model_attributes = @@model_attributes
  			controller_class_name = @@controller_class_name
  			controller_date_time = @@controller_date_time
  			controller_url_path = @@controller_url_path
  			controller_action = @@controller_action
  			save_to_file = @@save_to_file
  			dir_path = @@dir_path

  		end
  		
  	end
  end
end
config = Logger::Program::MainProgram.instance
p config.model_class_name = true
#


require_relative "../lib/logger"

class Config < Logger::Program::MainProgram
	@@model_class_name = true
	@@model_date_time = true
	@@model_attributes = true


	@@controller_class_name = true
	@@controller_date_time = true
	@@controller_url_path = true
	@@controller_action = true

	
	@@save_to_file = true # Please set true if you wanted store logs local (default condition is False)
	@@dir_path = "/home/log/" #If you wanted to store logs local put your path here in this format: 'home/user/dir'
	
	def to_db
		save_to_db = false # Please set true if you wanted store logs to database (default condition is False)
		create_migration = false 	# After you're finished with configuring file you need create migration.
									# Set this flag as 'true' and type in project folder "rake db:migrate" (default condition is False)
	end
end
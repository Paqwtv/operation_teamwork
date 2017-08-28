require '/home/hurum/projects/logger/config/initialize'
require '/home/hurum/projects/logger/lib/logger/get_data'


	class FileWorks
		include Logger::GetData

		def initialize(log_data, class_name, dir_path)
			@data = log_data
			@class_name = class_name
			@dir_path = dir_path
		end

		def save_to_file
			puts @dir_path
			if Dir.glob(@dir_path, File::FNM_CASEFOLD) == false #check for existing dir, if dir isn't exists, it will be created
				Dir.mkdir(@dir_path)
			end
			File.open("#{@dir_path}/#{@class_name}.txt", 'a') do |file| #create\update log file(add class to name)
				@data.each {|key, value| file.puts "#{key}#{value}::" if value != blank?}
				file.puts "\n"
				puts "Log file successfully saved"
			end
		def do_file
		# file_log = FileWorks.new(data, class_name)
			self.save_to_file if @save_to_file == true
		end

		end
	end
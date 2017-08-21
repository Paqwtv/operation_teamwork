parser_hash = {class_name: 'OMG', method_name: 'init', status: 'Ok'} #test hash

class FileWorks
	def initialize(parser_hash)
		@hash = parser_hash 
		@@dir_path = "/home/satanetal/ruby/project" #set it equal to dir path, will be deleted after cfg file integration
	end	
	def save_to_file
		if Dir.glob(@@dir_path, File::FNM_CASEFOLD) == false #check for existing dir, if dir isn't exists, it will be created
			Dir.mkdir(@@dir_path)
		end
		File.open("#{@@dir_path}/#{@hash[:class_name]}.txt", 'a') do |file| #create\update log file(add class to name)
			@hash.each {|key, value| file.print "'#{key}' is '#{value}' ::"}
			file.puts "\n"
		end
	end
end

print_me = FileWorks.new(parser_hash) 
print_me.save_to_file
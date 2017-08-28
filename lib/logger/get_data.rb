require '/home/hurum/projects/logger/config/initialize'
# require '/home/hurum/projects/logger/lib/logger/file_works'

module Logger
	module GetData

	puts @@dir_path
		def data_from_models
			@class_name = self.class.name
			@m_class_name = self.class.name if @@model_class_name == true
			@m_date_time = Time.now if @@model_date_time == true
			@m_attributes = @attributes.to_h if @@model_attributes == true
			@data = {
				"Model class name is " => @m_class_name,
				"logging at time " => @m_date_time,
				"objecr attributes is " => @m_attributes,
				}
			do_file(@data, @class_name)
		end

		def data_from_controllers
			class_name = self.class.name
			@c_class_name = self.class.name if @@controller_class_name == true
			@c_date_time = Time.now if @@controller_date_time == true
			@c_url_path = @_url_options if @@controller_url_path == true #for controllers, incoming params from DSL
			@c_action = @_action_name if @@controller_action == true #action name for controllers, witch called
			data = {
				"Controller class name is " => @c_class_name,
				"logging at time " => @c_date_time, 
				"incoming parametrs from " => @c_url_path,
				"in action " => @c_action
				}
			file_log = FileWorks.new(data, class_name, @@dir_path)
			puts file_log.inspect
			#puts file_log.methods
			file_log.save_to_file

			puts "-_________________________________________"
		end
	end
end
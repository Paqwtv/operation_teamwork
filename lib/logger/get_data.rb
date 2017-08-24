module GetData
	private
	def get_data
		class_name = self.class.name
		puts %w(----------)
		puts "Class name is #{class_name}"
		puts "Log time at #{Time.now}"		
		puts "Object data is #{@attributes.to_h}" unless @attributes.blank? #for model, data from DB
		puts @_url_options if @_url_options != nil  #for controllers, incoming params frod DSL		
		puts @_action_name unless @_action_name.blank? #action name for controllers, wich called
		puts %w(----------)
	end
end

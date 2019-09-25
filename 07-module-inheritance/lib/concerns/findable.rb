module Findable
	module ClassMethods
		def find_by_name(name)
			self.all.find {|cat| cat.name == name}
		end
	end
end

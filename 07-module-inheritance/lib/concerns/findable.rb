module Findable
	module ClassMethods
		def find_by_name(name)
			all.find {|item| item.name == name}
		end
	end

	module InstanceMethods
	end
end
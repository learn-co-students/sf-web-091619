class Department < ActiveRecord::Base
	has_many :doctors

	def docs
		# self.class.all # This will give us all departments
		Doctor.all.select do |doc|
			doc.department_id == self.id
		end
	end
end
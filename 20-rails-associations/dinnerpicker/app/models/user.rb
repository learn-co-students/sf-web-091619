class User < ApplicationRecord
	has_many :dinners, :dependent => :destroy
end

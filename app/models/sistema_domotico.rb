class SistemaDomotico < ActiveRecord::Base
	has_many :ambientes
	has_many :submodulos
end

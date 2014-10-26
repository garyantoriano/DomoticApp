class Elemento < ActiveRecord::Base
  belongs_to :ambiente
  belongs_to :submodulo
end

class Ambiente < ActiveRecord::Base
  belongs_to :sistema_domotico
  has_many :elementos
end

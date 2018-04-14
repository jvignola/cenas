class Empresa < ApplicationRecord
	has_many :eventos
	has_many :organizadors
	has_many :reservas
  
end

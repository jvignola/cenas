class Evento < ApplicationRecord
  belongs_to :empresa
  has_many :eventoinstancia
  has_one :comisionevento
  has_one :organizador
  has_many :reservas
  
end

class Reserva < ApplicationRecord
  belongs_to :usuario
  belongs_to :empresa
  belongs_to :evento
  belongs_to :eventoinstancia
  has_many :personasreservas
  
end

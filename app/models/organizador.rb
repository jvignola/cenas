class Organizador < ApplicationRecord
  belongs_to :empresa
  belongs_to :evento
  has_many :eventoinstancia
end

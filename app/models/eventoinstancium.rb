class Eventoinstancium < ApplicationRecord
  belongs_to :evento
  belongs_to :organizador
  has_many :reservas
  end

class Organizador < ApplicationRecord
  belongs_to :empresa
  belongs_to :evento
end

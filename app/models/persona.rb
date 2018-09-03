class Persona < ApplicationRecord
  self.table_name = 'Persona'

  belongs_to :organizacion
end

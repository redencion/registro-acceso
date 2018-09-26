class Acceso < ApplicationRecord
  self.table_name = 'Acceso'
  belongs_to :persona

end

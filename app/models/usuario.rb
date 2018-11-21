class Usuario < ApplicationRecord
  self.table_name = 'Usuario'
  has_secure_password
end

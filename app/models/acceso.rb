class Acceso < ApplicationRecord
  include ActiveModel::AttributeAssignment
  include ActiveModel::Validations
  self.table_name = 'Acceso'
  belongs_to :persona
  # nueva variable del modelo para hacer la busqueda en el formulario acceso
  attr_accessor :acceso_persona

  #validates_presence_of :acceso_persona
  validates :acceso_persona, presence: { message: "Debe colocar su credencial para validar sus datos" }, on: :buscarCredencial


end

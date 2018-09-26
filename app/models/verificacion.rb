class Verificacion 
  include ActiveModel::Model
  include ActiveModel::AttributeAssignment
  include ActiveModel::Validations
  # nueva variable del modelo para hacer la busqueda en el formulario acceso
  attr_accessor :credencial

  #validates_presence_of :credencial, message: 'Por favor agregue su información'

  #validates_presence_of :acceso_persona
  validates :credencial, presence: { message: " Agregue la información, es necesaria para realizar su busqueda" }, on: :verificacion
  # validates :credencial, format: { with: /\A[a-zA-Z0-9]+\z/, message: "Solo puede agregar letras y numeros" }, on: :verificacion
  # validates :credencial, length: { in: 6..20, menssage: "Debe tener un minimo de 6 a 20 caracteres"  }, on: :verificacion

end

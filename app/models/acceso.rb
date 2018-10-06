class Acceso < ApplicationRecord
  self.table_name = 'Acceso'
  belongs_to :persona

  #Metodo que busca si es entrada o salida del personal
 
  def establecerEntradaSalida ( persona_id )
    #regex_entero = /\d{3,20}$/
    if persona_id.is_a?(Integer)
      puts "id es valido"
    else
      puts "no es valido el id"
    end
    
  end

end

class Acceso < ApplicationRecord
  self.table_name = 'Acceso'
  belongs_to :persona

  #Metodo que busca si es entrada o salida del personal
  #

  def buscarRegistroAcceso( id )
    inforAcceso = Hash.new
    #regex_entero = /\d{3,20}$/
    if id.is_a?(Integer)
      @acceso_persona = Acceso.where(["persona_id = ?", id]).order("acceso_id desc").first
      if !@acceso_persona.nil? 

        if @acceso_persona.fecha_entrada and @acceso_persona.fecha_salida
          inforAcceso= {'entrada':'registro','salida':'registro'}
        elsif @acceso_persona.fecha_entrada and !@acceso_persona.fecha_salida
          inforAcceso = {'entrada':@acceso_persona.fecha_entrada ,'salida':'', 'id_acceso': @acceso_persona.acceso_id}
        elsif @acceso_persona.fecha_salida and !@acceso_persona.fecha_entrada
          inforAcceso = {'entrada':'', 'salida': @acceso_persona.fecha_salida}
        end
      else
          inforAcceso= {'entrada':'','salida':''}
      end
      return inforAcceso
    end
    
  end

  def registrarAcceso (id)
    fecha_hoy = Time.now
    proceso=''
    if id.is_a? (Integer)
        fecha_acceso  = self.buscarRegistroAcceso(id)
        puts fecha_acceso
        if fecha_acceso[:entrada] == "registro"  and fecha_acceso[:salida] == "registro" or (fecha_acceso[:entrada] == '' or  fecha_acceso[:salida] == '')
         proceso= 'nuevo'
        end

        if fecha_acceso[:id_acceso]
          comparacion = self.verificacionFecha(fecha_acceso[:entrada])
          if comparacion == 'iguales'
            proceso = 'actualizar'
          else
            proceso= 'nuevo'
          end
        end

        if proceso=='nuevo'
         self.persona_id = id
         self.fecha_entrada = Time.current
           if self.save
             puts 'registro realizado sin inconveniente'
           end
        else
            @update_acceso = Acceso.find_by(acceso_id: fecha_acceso[:id_acceso])
            @update_acceso.fecha_salida = Time.now
            if @update_acceso.save
              puts 'actualización'
            end
        end
    end  
  end

  # This method is person compare date inside and outside, because 
  # if a person 
  def verificacionFecha (fecha)
    fecha_hoy = Time.now
    resultado = ''
    if !fecha.nil? 
      fecha_registrada  = fecha.to_s
      fecha_otra = Time.parse(fecha_registrada)
      fecha_registrada = Time.at(fecha_otra)
      if fecha_registrada.day == fecha_hoy.day &&  fecha_registrada.month == fecha_hoy.month &&  fecha_registrada.year == fecha_hoy.year
        resultado = 'iguales'
      else
        resultado = 'diferentes'
      end
      return resultado
    end
  end

end

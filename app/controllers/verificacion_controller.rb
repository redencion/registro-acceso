class VerificacionController < ApplicationController

  def index
   @verificacion = Verificacion.new
  end

  def buscando
   @verificacion = Verificacion.new(verificacion_params)

    if @verificacion.valid?(:verificacion)
      @datos = Persona.find_by credencial: @verificacion.credencial
      if !@datos.nil?
        @acceso = Acceso.new
        fechaAcceso  = @acceso.registrarAcceso(@datos.id)

        respond_to do |format|
          format.html { redirect_to  verificacion_path  }
          format.js
         end
      end
    end
      
  end
  def credencial
  end

  private

  def verificacion_params
    params.require(:verificacion).permit(:credencial)
  end


end

class VerificacionController < ApplicationController

  def index
   @verificacion = Verificacion.new
  end

  def credencial
   @verificacion = Verificacion.new(verificacion_params)


    if @verificacion.valid?(:verificacion)

      Persona.find_by credencial: @verificacion.credencial
        @persona = Persona.new({
            credencial: @verificacion.credencial
        })
        @datos = @persona.buscarPersona
        #respond_to do |format|
        #  format.html { render '/verificando/_credencial'  }
        #  format.js
        # end
      
    else
      format.html { render :index  }
      #format.json { render json: @verificacion.errors, status: :unprocessable_entity  }
    end
  end

  private

  def verificacion_params
    params.require(:verificacion).permit(:credencial)
  end


end

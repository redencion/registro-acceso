class VerificacionController < ApplicationController

  def index
   @verificacion = Verificacion.new
  end

  def credencial
   @verificacion = Verificacion.new(verificacion_params)

   respond_to do |format|
    if @verificacion.valid?(:verificacion)
      params[:credencial] = @verificacion.credencial
      @persona = Persona.new({
          credencial: @verificacion.credencial
      })
      format.html { render '/persona/buscando'  }
    else
      format.html { render :index  }
      format.json { render json: @verificacion.errors, status: :unprocessable_entity  }
    end
   end
  end

  private

  def verificacion_params
    params.require(:verificacion).permit(:credencial)
  end


end

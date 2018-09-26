class AccesoController < ApplicationController
 
  
  def index
   @verificacion = Verificacion.new
  end

  def credencial
   @verificacion = Verificacion.new(acceso_params)

   respond_to do |format|
    if @verificacion.valid?(:verificacion)
      format.html { redirect_to @verificacion, notice: 'probando'  }
    else
      format.html { render :index  }
      format.json { render json: @verificacion.errors, status: :unprocessable_entity  }
    end
   end
  end

  private

  def acceso_params
    params.require(:verificacion).permit(:persona)
  end




end

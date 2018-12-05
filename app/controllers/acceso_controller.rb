class AccesoController < ApplicationController
 
  
  def index
    @acceso = Acceso.order(:fecha_entrada).page(params[:page]).per_page(5)
  end
  private

  def acceso_params
    params.require(:acceso).permit(:persona)
  end




end

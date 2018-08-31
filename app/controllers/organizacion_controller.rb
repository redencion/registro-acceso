class OrganizacionController < ApplicationController
  before_action  :set_organizacion, only: [:consultar, :actulizar, :editar, :eliminar]

  def index
    @organizacion = Organizacion.all  
  end
  
  def mostrar
  end

  def set_organizacion
    @org = Organizacion.find(params[:id])
  end




end

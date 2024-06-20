class PrototypesController < ApplicationController

  def index
    @prototypes = prototype.all
  end

  def new
    @prototype = prototype.new
  end

  def create
    prototype.create(prototype_params)
    redirect_to '/'
  end

  provete
  def prototype_params
  params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end

end

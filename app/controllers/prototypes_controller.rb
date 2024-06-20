class PrototypesController < ApplicationController
  def index
  end

  params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
end

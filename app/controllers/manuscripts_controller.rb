class ManuscriptsController < ApplicationController
  def index
    @manuscripts = Manuscript.all
    render json: @manuscripts, status: :ok
  end
end

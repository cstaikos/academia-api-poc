class ManuscriptsController < ApplicationController
  include Response

  def index
    @manuscripts = Manuscript.all
    json_response(@manuscripts)
  end

  def show
    @manuscript = Manuscript.find(params[:id])
    json_response(@manuscript)
  end

  def create
    @manuscript = Manuscript.create(manuscript_params)
    if @manuscript.save
      json_response(@manuscript, :created)
    else
      json_response({error: "Error creating manuscript"}, :bad_request)
    end
  end

  def update
    @manuscript = Manuscript.find(params[:id])
    @manuscript.update(manuscript_params)
    if @manuscript.save
      json_response(@manuscript)
    else
      json_response({error: "Error updating manuscript"}, :bad_request)
    end
  end

  def destroy
    @manuscript = Manuscript.find(params[:id])
    if @manuscript.destroy
      json_response({})
    else
      json_response({error: "Error deleting manuscript"}, :bad_request)
    end
  end

  def manuscript_params
    params.require(:manuscript).permit(:title)
  end
end

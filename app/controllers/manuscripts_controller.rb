class ManuscriptsController < ApplicationController
  def index
    @manuscripts = Manuscript.all
    render json: @manuscripts.as_json(include: [:discipline]), status: :ok
  end

  def show
    @manuscript = Manuscript.find(params[:id])
    render json: @manuscript.as_json(include: [:discipline, :works_cited, :cited_by]), status: :ok
  end

  def create
    @manuscript = Manuscript.create(manuscript_params)
    if @manuscript.save
      render json: @manuscript, status: :created
    else
      render json: {error: "Error creating manuscript"}, status: :bad_request
    end
  end

  def update
    @manuscript = Manuscript.find(params[:id])
    @manuscript.update(manuscript_params)
    if @manuscript.save
      render json: @manuscript, status: :ok
    else
      render json: {error: "Error updating manuscript"}, status: :bad_request
    end
  end

  def destroy
    @manuscript = Manuscript.find(params[:id])
    if @manuscript.destroy
      render json: nil, status: :no_content
    else
      render json: {error: "Error deleting manuscript"}, status: :bad_request
    end
  end

  def add_citation
    @manuscript = Manuscript.find(params[:manuscript_id])
    citee_id = params[:citee_id]

    @citation = Citation.create(citer_id: @manuscript.id, citee_id: citee_id)
    if @citation.save
      render json: @manuscript.as_json(include: [:works_cited, :cited_by])
    else
      render json: {error: "Error saving citation"}, status: :bad_request
    end
  end

  def upload_file
    @manuscript = Manuscript.find(params[:manuscript_id])
    @manuscript.content = params[:CONTENTDATA] if params[:CONTENTDATA].present?
    @manuscript.save #TODO error handling
  end

  def search
    @citee = Manuscript.find(params[:manuscript_id])
    @manuscripts = Manuscript.where('title ILIKE ?', "#{params[:query]}%")
    @manuscripts = @manuscripts - [@citee] - @citee.works_cited - @citee.cited_by
    render json: @manuscripts.as_json(include: [:discipline]), status: :ok
  end

  def manuscript_params
    params.require(:manuscript).permit(:title, :discipline_id, :publication_date, :abstract)
  end
end

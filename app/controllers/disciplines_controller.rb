class DisciplinesController < ApplicationController
  def index
    @disciplines = Discipline.all
    render json: @disciplines, status: :ok
  end

  def top_level
    @disciplines = Discipline.where("parent_id IS NULL", false)
    render json: @disciplines, status: :ok
  end

  def children
    @discipline = Discipline.find(params[:discipline_id])
    render json: @discipline.children, status: :ok
  end
end

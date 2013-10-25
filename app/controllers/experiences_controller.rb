class ExperiencesController < ApplicationController
  def index
    if params[:query].present?
      @experiences = Experience.search(params)
    else
      @experiences = Experience.order("created_at DESC")
    end
  end

  def show; end
end

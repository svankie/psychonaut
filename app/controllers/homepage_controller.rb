class HomepageController < ApplicationController
  def index
    if params[:query].present?
      @experiences = Experience.search(params)
    else
      @experiences = Experience.paginate(page: params[:page]).order("created_at DESC")
    end
  end
end

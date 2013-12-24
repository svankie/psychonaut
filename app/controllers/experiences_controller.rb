# encoding: utf-8

class ExperiencesController < ApplicationController
  def index
    @experiences = if params[:query]
                    Experience.search(params[:query])
                  else
                    Experience.paginate(page: params[:page], per_page: 10).order('happened_at desc')
                  end
  end
  
  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    if verify_recaptcha && @experience.save
      redirect_to @experience
    else
      flash[:alert] = "¡poné bien los datos, viejo!"
      render 'new'
    end
  end

  def show
    @experience = Experience.friendly.find(params[:id])
  end

  private

  def experience_params
    params.require(:experience).permit(:title, :pseudonym, :substance, :dose, :votes, :happened_at, :email, :report)
  end
end

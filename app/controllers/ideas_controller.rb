class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def create
    @idea = Idea.create(params[:idea].permit(:title))
  end
end

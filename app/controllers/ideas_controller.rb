class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def create
    Idea.create(params[:idea])
  end
end

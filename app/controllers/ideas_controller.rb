class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def create
    @idea = Idea.create(params[:idea].permit(:title))
  end
  
  def edit
    # Find the record by id
    @idea = Idea.find(params[:id])
    # Change the attribute to done
    @idea.done = true
    # Save it back to the database
    # (the change only existed in Ruby code before this)
    @idea.save
  end

  def destroy
    # Find the record by id
    @idea = Idea.find(params[:id])
    # Destroy & save it
    @idea.destroy
  end
end

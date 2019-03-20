class AuthorsController < ApplicationController
  before_action :get_author, only: [:show, :edit, :update]

  def index
    @authors = Author.all
  end

  def show
  end

  def new
    @author = Author.new
  end
  
  def create
    @author = Author.create(author_params)
    if @author.valid?
      redirect_to @author
    else
      render :new
    end
  end

  def edit
  end

  def update
    @author.update(author_params)
    if @author.valid?
      redirect_to @author
    else
      render :edit
    end
  end

  private

  def get_author
    @author = Author.find(params[:id])  
  end

  def author_params
    params.require(:author).permit(:name, :genre, :bio)
  end

end
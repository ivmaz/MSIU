class GenresController < ApplicationController
  before_filter :check_admin_user,:except => 'show'
  
  def index
    respond_to do |format|
      format.html{@genre = Genre.all}
      format.json do
        @genres=Genre.where("lower(name) LIKE lower(?)","%#{params[:q]}%").all
        render :json=>@genres.map(&:attributes)
      end
    end
  end
  
  def show
    @genre=@current_genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def create
    @genre = Genre.new(params[:genre])

    if @genre.save
      redirect_to(@genre, :notice => 'Жанр создан.')
    else
      render :action => "new"
    end
  end

  def update
    @genre = Genre.find(params[:id])
    if @genre.update_attributes(params[:genre])
      redirect_to(@genre, :notice => 'Жанр сохранен.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @genre = Genre.find(params[:id])
    @genre.destroy
    redirect_to genres_url, :notice=>"Жанр удален"
  end
end

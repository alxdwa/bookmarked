class BookmarksController < ApplicationController
  def index
    @bookmarks = session[:bookmarks]
    @bookmarks ||= []
  end

  def create
    if session[:bookmarks] == nil
      session[:bookmarks] = []
    end
    session[:bookmarks].push(params[:bookmark])

    redirect_to bookmarks_path
  end

  def new

  end

  def show
  end

  def update
    @bookmark_id = params[:id].to_i
    session[:bookmarks][@bookmark_id] = params[:bookmark]
    redirect_to bookmarks_path
  end

  def edit
    #index of bookmark
    @bookmark_id = params[:id].to_i
    @bookmark = session[:bookmarks][@bookmark_id]
  end

  def destroy
    @bookmarks = session[:bookmarks]
    @bookmark_id = params[:id].to_i
    @bookmarks.delete_at(@bookmark_id)

    redirect_to bookmarks_path
  end
end

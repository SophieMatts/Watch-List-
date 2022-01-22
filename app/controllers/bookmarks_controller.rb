class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def show
    @bookmark = Bookmark.find(params[:bookmark_id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to bookmark_path(@bookmark)
  end

  def edit
    @bookmark = Bookmark.find(params[:bookmark_id])
  end

  def update
    @bookmark = Bookmark.find(params[:bookmark_id])
    @bookmark.update(bookmark_params)
    redirect_to bookmark_path(@bookmark)
  end

  def destroy
    @bookmark = Bookmark.find(params[:bookmark_id])
    @bookmark.destroy
    redirect_to bookmark_path(@bookmark)
  end
end

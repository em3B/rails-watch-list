class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save!

    redirect_to list_path(@bookmark.list_id)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :list_id)
  end
end

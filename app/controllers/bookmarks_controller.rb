class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    raise
    @bookmark = Bookmark.new(bookmark_params)
    @list = set_list
    @bookmark.list_id = @list.id
    @bookmark.save

    redirect_to list_path(@list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:movie_id)
  end

  def set_list
    @list = List.find(params[:list_id])
  end
end

# nested new

resources :bands do
  resources :albums, only: [:new]
end

# this new route depends on the band. Remember that new is a get request to retrieve the form

# this route creates `GET /bands/:band_id/albums/new`

resources :albums, except: [:new]

# once we have the route set up, the controller action would need

class AlbumsController < ApplicationController
  def new
  end

  def create
    album = Album.new(album_params)
    if album.save
      redirect_to band_url(album.band_id)
    else
      flash.now[:errors] = album.errors.full_messages
      render :new
    end
  end

  def album_params
    # make sure to permit the band_id as it is sent as part of the body of the request (the form data)
    params.require(:album).permit(:title, :year, :band_id)
  end
end

# in the views, we would modify to look like

<form action="<%= albums_url %>" method="POST">
  <input type="hidden" name="authenticity_token" value="<%= form_authenticity_token %>">

  <!-- pass the band id we have from params (it's in the route path as a wildcard) so "create" action will have a band_id for the ablum we are creating -->
  <input type="hidden" name="album[band_id]" value="<%= params[:band_id] %>">

  <input type="text" name="album[title]">
  <input type="text" name="album[year]">
  <input type="submit" value="Create New Album">
</form>

# nested create

resources :bands do
  resources :albums, only: [:create]
end

# we would need to do this

resources :albums, except: [:new]

# The difference would be the View lives on the Show page

# NO NESTING

# The major difference is that the value for the hidden input pulls the band\'s id from the @band.

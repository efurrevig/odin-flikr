class HomeController < ApplicationController
  require 'flickr'

  def index
    begin
      flickr = Flickr.new
      unless params[:search].blank?
        @photos = flickr.photos.search(text: params[:search])
      else
        @photos = flickr.photos.getRecent
      end
    rescue StandardError => e
      flash[:alert] = "#{e.class}: #{e.message} Error"
    end
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

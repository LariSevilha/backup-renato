class HomeController < ApplicationController
  def index
    @header = Header.all
    @video = Video.all 
    @about = About.all 
  end
end

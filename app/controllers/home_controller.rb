class HomeController < ApplicationController
  def index
    @videos = Video.all
    @messages_count = Message.count
  end
end
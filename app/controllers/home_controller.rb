class HomeController < ApplicationController
  

  def index
  @videos = Video.all
  @message_count = Message.count
  end
end
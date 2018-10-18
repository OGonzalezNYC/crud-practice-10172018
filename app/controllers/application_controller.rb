class ApplicationController < ActionController::Base
  def welcome
    render 'home'
  end
end

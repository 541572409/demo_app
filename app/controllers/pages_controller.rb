class PagesController < ApplicationController
  def home
    @title="home"
    @micropost = Micropost.new if !current_user.nil?
  end

  def contact
    @title="contact"
  end

  def about
    @title="about"
  end

  def help
    @title="help"
  end
end

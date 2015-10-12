class WelcomeController < ApplicationController

  def index
    @widget = Widget.first
  end

end

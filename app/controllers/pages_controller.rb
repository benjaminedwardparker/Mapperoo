class PagesController < ApplicationController
  def show
    @points = Point.all
  end
end

class Api::PointsController < ApplicationController
  protect_from_forgery with: :null_session
  def index
    @points = Point.all
    render json: @points
  end
  def create
    @point = Point.new(params.require(:point).permit(:name,:lat,:lng))
    @point.save
    render json: @point
  end

  def update
    @point = Point.find(params[:id])
    @point.update(params.require(:point).permit(:name,:lat,:lng))
    render json: @point
  end
end

# curl -H "Content-Type: application/json" -d '{"name":"Discovery Green","lat":"29.754132","lng":"-95.35991"}' http://localhost:3000/api/points
# HTTP Requests must set Content-Type: 'application/json' header
# 29.6885295,-95.3946663
# 29.754132,-95.35991

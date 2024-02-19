class Api::V0::JustinismsController < ApplicationController
  def index 
    render json: JustinismSerializer.new(Justinism.all) 
  end
end
class Api::V0::JustinismsController < ApplicationController
  def index 
    limit = params[:limit] || 1 
    justinisms = Justinism.order("RANDOM()").limit(limit)
    render json: JustinismSerializer.new(justinisms)
  end
end
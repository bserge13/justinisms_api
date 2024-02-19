class Api::V0::JustinismsController < ApplicationController
  def index 
    if params[:limit].present? 
      limit = params[:limit] 
      justinisms = Justinism.order("RANDOM()").limit(limit)
      render json: JustinismSerializer.new(justinisms), status: 200
    else 
      render json: { "errors": [{ "detail": "Couldn't find saying without parameters"}] }, status: 400
    end 
  end
end
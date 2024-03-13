# frozen_string_literal: true

# Controller responsible for the call of the api system
class TourismController < ApplicationController
  def show
    place = Place.find_by(name: permit_params[:place])

    render json: place || {}
  end

  private

  def permit_params
    params.permit(:place, :lang)
  end
end

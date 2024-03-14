# frozen_string_literal: true

# Controller responsible for the call of the api system
class TourismController < ApplicationController
  def show
    api_result = Apis::FindTourismInfosOrganizer.call(place_param: permit_params[:place])

    if api_result.place.present?
      db_result = ::SaveInfosIntoDatabase.call(
        place_param: api_result.place, weathers: api_result.weathers, tourism: api_result.tourism
      )
    end

    render json: {
      place: db_result.place,
      interesting_points: db_result.place.interesting_points,
      weathers: db_result.place.weathers
    }
  end

  private

  def permit_params
    params.permit(:place, :lang)
  end
end

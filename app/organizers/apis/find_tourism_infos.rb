# frozen_string_literal: true

module Apis
  # Class responsible for organize all the steps to FIND tourism informations based on apis
  # at the end save into the database
  class FindTourismInfos
    include Interactor::Organizer

    organize FindGeocoderInfos,
             FindInterestingPointsInfos,
             FindWeatherInfos,
             TranslateInfos
  end
end

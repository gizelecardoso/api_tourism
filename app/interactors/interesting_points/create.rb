# frozen_string_literal: true

module InterestingPoints
  # Class responsible for create interesting point
  class Create
    include Interactor

    def call
      interesting_point = InterestingPoint.new(place: Place.first)

      context.fail!(error: :invalid_record) unless interesting_point.save
    end
  end
end

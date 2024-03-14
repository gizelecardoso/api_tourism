# frozen_string_literal: true

module InterestingPoints
  # Class responsible for create interesting point
  class Create
    include Interactor

    def call
      context.tourism.each do |tour|
        interesting_point = InterestingPoint.new(tour)
        interesting_point.place = context.place
        interesting_point.save!
      end
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end
  end
end

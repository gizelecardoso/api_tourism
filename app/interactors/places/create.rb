# frozen_string_literal: true

module Places
  # Class responsible for create place
  class Create
    include Interactor

    def call
      context.place = Place.new(context.place_param)

      context.fail!(error: :invalid_record) unless context.place.save
    end
  end
end

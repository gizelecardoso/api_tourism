# frozen_string_literal: true

module Places
  # Class responsible for create place
  class Create
    include Interactor

    def call
      place = Place.new

      context.fail!(error: :invalid_record) unless place.save
    end
  end
end

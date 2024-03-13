# frozen_string_literal: true

module Places
  # Class responsible for find places based on param
  class Find
    include Interactor

    def call
      context.place = Place.find_by(name: context.name)

      context.fail!(error: :record_not_found) if context.place.blank?
    end
  end
end

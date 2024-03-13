# frozen_string_literal: true

module Apis
  # Class responsible for call amadeus api and return some tourism places
  class FindTourismInfos
    include Interactor

    def call
      context.tourism = [
        {
          name: 'Museu do Louvre',
          category: 'museu'
        },
        {
          name: 'Torre Eiffel',
          category: 'monumento'
        }
      ]
    end
  end
end

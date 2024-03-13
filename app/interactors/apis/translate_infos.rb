# frozen_string_literal: true

module Apis
  # Class responsible for call libretranslate api and translate infos
  class TranslateInfos
    include Interactor

    def call
      context.translate = {}
    end
  end
end

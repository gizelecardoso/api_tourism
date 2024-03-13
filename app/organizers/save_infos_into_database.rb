# frozen_string_literal: true

# Class responsible for organize all the steps to save infos into the database
class SaveInfosIntoDatabase
  include Interactor::Organizer

  organize Places::Create,
           InterestingPoints::Create,
           Weathers::Create
end

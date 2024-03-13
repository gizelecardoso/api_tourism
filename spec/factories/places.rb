# frozen_string_literal: true

FactoryBot.define do
  factory :place do
    name { Faker::Address.city }
    country { Faker::Address.country }
    population { 1000 }
    lang { 'pt_br' }
  end
end

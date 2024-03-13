# frozen_string_literal: true

Rails.application.routes.draw do
  get '/tourism', to: 'tourism#show'
end

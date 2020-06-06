# frozen_string_literal: true

FactoryBot.define do
  factory :player do
    name { generate(:name) }
  end
end

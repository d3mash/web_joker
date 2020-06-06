# frozen_string_literal: true

FactoryBot.define do
  sequence :name do |n|
    "person#{n}"
  end
end

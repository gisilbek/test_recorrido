# frozen_string_literal: true

FactoryBot.define do
  factory :contract do
    name { 'MyString'}
    week_start_time { 'MyInteger'}
    week_end_time { 'MyInteger'}
    weekend_start_time { 'MyInteger'}
    weekend_end_time { 'MyInteger'}
  end
end

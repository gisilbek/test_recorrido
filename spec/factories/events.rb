# frozen_string_literal: true

FactoryBot.define do
  factory :event do
    name { 'MyString' }
    date { 'MyString' }
    personal { 'MyInteger'}
    contract_id { 'MyInteger' }
    start_time { 'MyString' }
    end_time { 'MyString' }
  end
end

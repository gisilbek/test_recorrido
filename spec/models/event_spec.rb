# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Event, type: :model do
  it { should belong_to :contract }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:personal) }
  it { should validate_presence_of(:contract) }
  it { should validate_presence_of(:start_time) }
  it { should validate_presence_of(:end_time) }
end

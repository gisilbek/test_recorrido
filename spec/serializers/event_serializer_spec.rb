# frozen_string_literal: true

require 'rails_helper'

RSpec.describe EventSerializer, type: :serializer do
  context "when render index" do
    let!(:contract) { create(:contract, name: 'guest', week_start_time: 19, week_end_time: 24, weekend_start_time: 10, weekend_end_time: 24) }
    let(:event) { create :event, name: 'free', date: '2022-01-19', personal: 1, contract_id: contract.id, start_time: '19:00', end_time: '24:00' }
    let(:serializer) { described_class.new(event) }
    let(:serialization) { ActiveModelSerializers::Adapter.create(serializer) }

    let(:subject) { JSON.parse(serialization.to_json) }

    it "includes name attribute" do
      expect(subject['name']).to eq event.name
    end
  end # context index
end
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "Events resquests", type: :request do
  # describe "GET /index" do
  #   pending "add some examples (or delete) #{__FILE__}"
  # end

  # This should return the minimal set of attributes required to create a valid
  # Event. As you add validations to Event, be sure to
  # adjust the attributes here as well.
  # let(:valid_attributes) { {
  #   name: 'Mi primer Evento',
  #   date: '2022-01-19',
  #   personal: 1,
  #   contract: contract.id,
  #   start_time: '19:00',
  #   end_time: '24:00' }
  #  # skip("Add a hash of attributes valid for your model")
  # }

  let(:invalid_attributes) { {
    name: nil,
    date: nil,
    personal: nil,
    contract: nil,
    start_time: nil,
    end_time: nil }
    #skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # EventsController, or in your router and rack
  # # middleware. Be sure to keep this updated too.
  let(:valid_headers) {
    {}
  }

  describe "GET /api/v1/events" do
    context 'when creating an event' do
      let!(:contract) { create(:contract, name: 'guest', week_start_time: 19, week_end_time: 24, weekend_start_time: 10, weekend_end_time: 24) }
      let(:params) { attributes_for(:event, name: 'free', date: '2022-01-19', personal: 1, contract_id: contract.id, start_time: '19:00', end_time: '24:00') }
      it "renders a successful response" do
        get "/api/v1/events", headers: params, as: :json
         expect(response).to be_successful
      end
    end
  end

  describe "POST /api/v1/events" do
    context 'when creating an event' do
      let!(:contract) { create(:contract, name: 'guest', week_start_time: 19, week_end_time: 24, weekend_start_time: 10, weekend_end_time: 24) }
      let(:params) { attributes_for(:event, name: 'free', date: '2022-01-19', personal: 'Ernesto', contract_id: contract.id, start_time: '19:00', end_time: '24:00') }

      # before do
      #   post "/api/v1/events", params: { event: params }
      # end

      context "with valid parameters" do
        it "creates a new Event" do
          expect {
            post "/api/v1/events",
                 params: { event: params }, headers: valid_headers, as: :json
          }.to change(Event, :count).by(1)
        end

        it "renders a JSON response with the new event" do
          post "/api/v1/events",
               params: { event: params }, headers: valid_headers, as: :json
          expect(response).to have_http_status(:created)
          expect(response.content_type).to match(a_string_including("application/json"))
        end
      end

      context "with invalid parameters" do
        it "does not create a new Event" do
          expect {
            post "/api/v1/events",
                 params: { event: invalid_attributes }, as: :json
          }.to change(Event, :count).by(0)
        end

        it "renders a JSON response with errors for the new event" do
          post "/api/v1/events",
               params: { event: invalid_attributes }, headers: valid_headers, as: :json
          expect(response).to have_http_status(:unprocessable_entity)
          expect(response.content_type).to eq("application/json")
        end
      end
      # it 'saves the event' do
      #   expect(response).to have_http_status(201)
      # end

      # it 'saves not the event' do
      #   expect(response).to have_http_status(422)
      # end
      # it "renders a successful response" do
      #   post "/api/v1/events", params: { event: params }, headers: params, as: :json
      #   # Event.create! valid_attributes
      #   # get events_url, headers: valid_headers, as: :json
      #   expect(response).to have_http_status(:created)
      # end
    end
  end


  # describe "GET /show" do
  #   it "renders a successful response" do
  #     event = Event.create! valid_attributes
  #     get event_url(event), as: :json
  #     expect(response).to be_successful
  #   end
  # end
end

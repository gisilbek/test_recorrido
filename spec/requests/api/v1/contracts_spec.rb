# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "Contracts", type: :request do
  let(:valid_attributes) {{
    name: "CompanyTCH",
    week_start_time: 19,
    week_end_time: 24,
    weekend_start_time: 10,
    weekend_end_time: 24 }
    #skip('Add a hash of attributes valid for your model')
  }

  let(:invalid_attributes) {{
    name: "",
    week_start_time: NULL,
    week_end_time:NULL ,
    weekend_start_time: NULL ,
    weekend_end_time:NULL  }
    skip('Add a hash of attributes invalid for your model')
  }

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # ContractsController, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) {
    {}
  }

  describe "GET /api/v1/contracts" do
    it "Debe de regresar el listado de Contracto" do
      get api_v1_contracts_path
      expect(response).to have_http_status(200)
    end
  end
  describe "GET /api/v1/contracts/:id" do
    let(:contract) { Contract.create(name: 'CompanyTCH', week_start_time: 19, week_end_time: 24, weekend_start_time: 10, weekend_end_time: 24) }

    it "Debe de regresar un  Contracto" do
      get api_v1_contract_path contract.id
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /api/v1/contracts" do
    it "Debe de registrarun Contracto" do
      post api_v1_contracts_path, params: { contract: valid_attributes }
      expect(response).to have_http_status(200)
    end
  end

  # describe "GET /api/v1/contracts" do
  #   it "Debe de regresar el listado de Contracto" do
  #     get api_v1_contracts_path
  #     expect(response).to have_http_status(200)
  #   end
  # end
end

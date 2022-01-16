# frozen_string_literal: true

module Api
  module V1
    # app/controllers/api/v1/contracts_controller.rb

    # Controller Contracts
    class ContractsController < ApplicationController
      before_action :set_contract, only: %w[:show :update :destroy]

      def index
        @contracts = Contract.all

        render json: @contracts
      end

      def show
        render json: @contract
      end

      def create
        @contract = Contract.new(contract_params)

        if @contract.save
          render json: @contract, status: :created, location: @contract
        else
          render json: @contract.errors, status: :unprocessable_entity
        end
      end

      def update
        if @contract.update(contract_params)
          render json: @contract
        else
          render json: @contract.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @contract.destroy
      end

      private

      def set_contract
        @contract = Contract.find(params[:id])
      end

      def contract_params
        params.require(:contract).permit(:name, :week_start_time, :week_end_time, :weekend_start_time,:weekend_end_time)
      end
    end
  end
end

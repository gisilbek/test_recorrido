# frozen_string_literal: true

module Api
  module V1
    # app/controllers/api/v1/events_controller.rb

    # Controller Events
    class EventsController < ApplicationController
      before_action :set_event, only: %w[:show :update :destroy]

      def index
        @events = Event.all

        render json: @events
      end

      def show
        render json: @event
      end

      def create
        @event = Event.new(event_params)

        if @event.save
          render json: @event, status: :created, location: @event
        else
          render json: @event.errors, status: :unprocessable_entity
        end
      end

      def update
        if @event.update(event_params)
          render json: @event
        else
          render json: @event.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @event.destroy
      end

      private
      def set_event
        @event = Event.find(params[:id])
      end

      def event_params
        params.require(:event).permit(:name, :date, :personal, :contract_id, :start_time, :end_time)
      end
    end
  end
end

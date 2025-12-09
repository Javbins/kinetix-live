class Api::V1::HealthController < ApplicationController
  def index
    render json: { 
      status: 'LIVE',
      message: 'Kinetix API is online',
      timestamp: Time.current.iso8601,
      environment: Rails.env
    }
  end
end
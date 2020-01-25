class Api::V1::HealthController < ApplicationController

  def health
    render json: {message: "API status ok"}, status: :ok
  end

end

class ErrorsController < ApplicationController
  def not_found
    render status: 404
  end

  def unacceptable
    render status: 422
  end

  def server_errors
    render status: 500
  end
end

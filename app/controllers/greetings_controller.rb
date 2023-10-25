class GreetingsController < ApplicationController
  def random
    message = Message.order('RANDOM()').first
    render json: { message: message.content }
  end
end

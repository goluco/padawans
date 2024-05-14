class PadawansController < ApplicationController
  def create
    padawan = Padawan.new(name: params[:name], age: params[:age], city: params[:city], email: params[:email])

    return render json: padawan, status: :created if padawan.save
    return render json: padawan.errors.full_messages, status: :precondition_failed
  end
end

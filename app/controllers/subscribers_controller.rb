class SubscribersController < ApplicationController

  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      flash[:notice] = "You have been added to our Mailing List."
      redirect_to :back
    else
      flash.now[:errors] = @subscriber.errors.full_messages.join(". ")
      redirect_to :back
    end
  end
  def subscriber_params
    params.require(:subscriber).permit(
      :id, :email)
  end



end

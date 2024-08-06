class ClientsController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_client

  def dashboard
    @stocks = current_user.stocks
  end

  private

  def authorize_client
    redirect_to root_path unless current_user.trader?
  end
end
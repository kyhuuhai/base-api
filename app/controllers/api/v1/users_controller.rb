class Api::V1::UsersController < ApplicationController
  def index
    json_response User.all.includes(:posts), UserSerializer, token: "Token"
  end

  def show
    json_response User.find(params[:id]), UserSerializer
  end
end

class UsersController < ApplicationController
  def index
    @users = User.all
    @data = = RestClient.get('http://swapi.co/api/people/1')
  end
end

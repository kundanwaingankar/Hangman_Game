require 'spec_helper'

describe GamesController do

  describe "GET index" do
    it "has a 200 status code" do
      get :index
      (response.status).should == 200
    end
  end

  describe "GET play_game" do
    it "has a 200 status code" do
      get :play_game
      (response.status).should == 200
    end
  end

  describe "POST game_input" do
    it "has a 302 status code" do
      post :game_input
      (response.status).should == 302
    end
    it "should have params(user_input)" do
      post :sign_in
      (response.status).should == 302
    end
  end

  describe "GET result" do
    it "has a 200 status code" do
      get :result
      (response.status).should == 200
    end
  end

  describe "GET logout" do
    it "has a 200 status code" do
      get :logout
      (response.status).should == 200
    end
  end
end

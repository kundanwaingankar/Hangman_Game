require 'spec_helper'

describe UsersController do
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      (response.status).should == 200
    end
  end

  describe "POST sign_in" do
    it "has a 302 status code" do
      post :sign_in
      (response.status).should == 302
    end

    it "should have username and password as params" do
      post :sign_in
      (response.status).should == 302
    end
  end

  describe "GET sign_up" do
    it "has a 200 status code" do
      get :sign_up
      (response.status).should == 200
    end
  end

  describe "POST create" do
    it "has a 302 status code" do
      post :create
      (response.status).should == 302
    end

    it "should have all parameters(username,password,first_name,last_name,email,gender)" do
      post :sign_in
      (response.status).should == 302
    end
  end
end

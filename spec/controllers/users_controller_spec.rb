require 'spec_helper'

describe UsersController do
  integrate_views

    describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

  it "should have the rigt title" do
    get 'new'
    response.should have_tag("title", /Sign up/)
  end

end

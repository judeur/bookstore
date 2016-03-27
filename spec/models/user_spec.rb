require 'rails_helper'

describe User do
  context "email and password present"
  before do
    @user = User.create!(email: "foobar@example.com", password: "qw3kI@78")
    #user = FactoryGirl.build!
  end

  it "should return email" do
    expect(@user.email).to eq "foobar@example.com"
  end

  it "should return password" do
    expect(@user.password).to eq "qw3kI@78"
  end

end
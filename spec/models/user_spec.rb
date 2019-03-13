require 'rails_helper'

describe User do
  context "when user gets created" do
    let(:user) { User.new(password: "123456") }
  end

  it "user not valid without an email" do
    expect(User.new(email: "", password: "123456")).not_to be_valid
  end

  context "when user gets created" do
    let(:user) { User.new(email: "test@catz-creationz.com") }
  end

  it "user not valid without a password" do
    expect(User.new(email: "test@catz-creationz.com", password: "")).not_to be_valid
  end

end

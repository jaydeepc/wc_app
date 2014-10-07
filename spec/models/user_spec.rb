require "rails_helper"

describe User do
  it "validates email" do
    user = User.new

    expect(user.valid?).to be(false)
    expect(user.errors.messages[:email]).to eq(["can't be blank"])
  end

  it "will accept any text as email" do
    user = User.new email: 'themailstring'
    expect(user.valid?).to be(true)
  end
end

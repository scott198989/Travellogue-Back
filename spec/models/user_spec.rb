require 'rails_helper'

RSpec.describe User, type: :model do
    it "should validate email" do
        user = User.create(
            email: nil,
            password: "password",
            password_confirmation: "password"
        )
        expect(user.errors[:email]).to_not be_empty
    end

    it "should validate password" do
        user = User.create(
            email: "test@example.com",
            password: nil,
            password_confirmation: "password"
        )
        expect(user.errors[:password]).to_not be_empty
    end

end
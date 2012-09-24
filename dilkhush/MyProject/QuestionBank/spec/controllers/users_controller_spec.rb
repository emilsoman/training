require 'spec_helper'

describe UsersController do
	describe "#create" do
		context "when user with email id does not exists" do
			it "should create a user"do
				expect do
                                	post :create , user: {email: "test@test.com" , name:  "John", gender: "M"} 
				end.to change(User, :count).by(1)
			end
	end
end

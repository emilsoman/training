require 'spec_helper'

describe QuestionsController do
	describe "#create" do
		context "when user enter a question" do
			it "should create a question" do
				expect do
					pending
#					post :create , question: { title: "ROR" , question_body:  "What is ROR?", image: "/home/ubuntu/Picture/P1000536.JPG" } 
				end.to change(Question, :count).by(1)
			end
		end
	end
end

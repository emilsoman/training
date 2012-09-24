require 'spec_helper'

describe QuestionsController do
	describe "#create" do
		context "when user enter a question" do
			it "should create a question" do
				expect do
					post :create , question: { title: "ROR" , body:  "What is ROR?", image: "" } 
				end.to change(Question, :count).by(1)
			end
		end
	end
end

require 'spec_helper'

describe AnswersController do
	describe "#downvote" do
		context "when user enter on the downvote button" do
			it "should increse a count in downvote"do
				@answer = Factory(:answer, question: question)
				current_downvote = @answer.downvote
				put :downvote
				@answer.downvote.should == current_downvote + 1
			end
		end		
	end
end

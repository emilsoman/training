FactoryGirl.define do   
 load "#{Rails.root}/app/models/user.rb"  
	factory :question do |question|
	  question.title "Database"
	  question.question_body "Whart is database?"
		question.user_id 1
	end
end

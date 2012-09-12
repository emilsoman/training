class Accounting < ActiveRecord::Base
  attr_accessible :account_id, :user_id
	belongs_to :user
  belongs_to :account
end

class GreetingsController < ApplicationController
  def Create
	@create_message = "one greeting created"
  end

  def Delete
	@del_message = "one greeting deleted"
  end

  def Add
	@add_message = "one greeting add"
  end
end

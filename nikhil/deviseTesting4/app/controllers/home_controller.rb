class HomeController < ApplicationController

  def index
  
  end
end


class HomeController < ApplicationController

  def index
    if user_signed_in?
      if (current_user.role=='Super Admin')
        @users = User.all
        @rooms = Room.all
        @orgainzations = Orgainzation.all
      elsif (current_user.role=='Admin')
        @users = User.where("organization_id = ?", current_user.organization_id)
        @rooms = Room.where("orgainzation_id = ?", current_user.organization_id)
        @orgainzations = Orgainzation.where("id = ?", current_user.organization_id)
      else
#        @rooms = Room.all
        @rooms = Room.where("orgainzation_id = ?", current_user.organization_id)
        @orgainzations = Orgainzation.where("id = ?", current_user.organization_id)
      end
    end
  end
end
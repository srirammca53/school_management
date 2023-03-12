class WelcomeController < ApplicationController
  def index
  	return unless Current.user
  	if Current.user.role_id == 2
  	   @institute = Institute.where(user_id = Current.user.id.to_s).first
  	end
    @batches = Batch.all
  	@courses = Course.all
  end
end

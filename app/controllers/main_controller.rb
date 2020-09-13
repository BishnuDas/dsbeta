class MainController < ApplicationController
  def index
  end
  def property_list
  	@property = Property.all
  end

  def property_details
    @property = Property.find(params[:p_id].to_i)
  end

  def post_new_property
  end
  
  def update_property
    binding.pry
  end
end

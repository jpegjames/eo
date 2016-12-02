class Route < ActiveRecord::Base

  def to_s
    short_name 
  end
end

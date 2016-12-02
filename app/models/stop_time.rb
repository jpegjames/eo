class StopTime < ActiveRecord::Base
  default_scope { order('arrival_time ASC') }
  belongs_to :stop, foreign_key: :stop_id, primary_key: 'stop_id'
  belongs_to :trip
  has_one :route, through: :trip
end

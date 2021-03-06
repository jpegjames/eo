class Stop < ActiveRecord::Base
  has_many :stop_times, primary_key: 'stop_id'
  has_many :trips, through: :stop_times
  has_many :routes, -> { uniq }, through: :trips
end

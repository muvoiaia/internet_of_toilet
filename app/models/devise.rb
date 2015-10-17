class Devise < ActiveRecord::Base
  belongs_to :room
  has_many :devise_logs
end

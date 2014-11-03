class Reader < ActiveRecord::Base
  has_many :magazines, through: :subscriptions
  has_many :subscriptions
end

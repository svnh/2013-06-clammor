class Subscription < ActiveRecord::Base
  # TODO Implement Subscription associations. See subscription_spec.rb for specification.
  validates_date :renew_date
  belongs_to :group
  belongs_to :user
  # TODO Implement a Subscription custom validation. See subscription_spec.rb for specification.

  def renew_date_is_valid_datetime

    # TODO Should validate that the renew_date column is a valid DateTime.  See subscription_spec.rb for more tips 

  end
end

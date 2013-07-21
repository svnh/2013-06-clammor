class Subscription < ActiveRecord::Base
  # TODO Implement Subscription associations. See subscription_spec.rb for specification.
  belongs_to :group, foreign_key: "group_id"
  belongs_to :user, foreign_key: "user_id"
  # TODO Implement a Subscription custom validation. See subscription_spec.rb for specification.
  
  def renew_date_is_valid_datetime
    # TODO Should validate that the renew_date column is a valid DateTime.  See subscription_spec.rb for more tips 
  end
end

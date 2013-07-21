class Group < ActiveRecord::Base
  # TODO Implement Group associations. See group_spec.rb for specification.
  has_many :subscriptions
  has_many :users, through: :subscriptions
  # TODO Implement Group validations. See group_spec.rb for specification.
  validates :motto, presence: true
  validates :name, uniqueness: true

  attr_accessible :motto
end

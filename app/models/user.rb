class User < ActiveRecord::Base
  attr_accessible :name, :email, :content

  # TODO implement association for User model. See user_spec.rb for specification.
  has_many :posts
  has_many :comments
  has_many :subscriptions
  has_many :groups, through: :subscriptions
  has_one :status, dependent: :destroy
  after_create :welcome_status

  # TODO Implement validation for User model. See user_spec.rb for specification.
  validates :name, length: { minimum: 2, :allow_blank => false, message: "can't be blank" }
  validates :email, format: {with: /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/, message: "has already been taken" }


  def welcome_status
    self.status = Status.new(content: 'I Just joined Clammor!')
  end
end

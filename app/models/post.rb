class Post < ActiveRecord::Base
  attr_accessible :content, :title
  # TODO Implement Post associations. See post_spec.rb for specification.
  belongs_to :user, foreign_key: "user_id"
  has_many :comments, dependent: :destroy
  # TODO Implement Post validations. See post_spec.rb for specification.
  validates :title, length: { minimum: 2, :allow_blank => false, message: "can't be blank" }
  validates :content, length: { minimum: 2, :allow_blank => false, message: "can't be blank" }


end

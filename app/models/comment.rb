class Comment < ActiveRecord::Base
  attr_accessible :content
  # TODO Implement Comment associations. See comment_spec.rb for specification.
  belongs_to :post 
  belongs_to :user

  # TODO Implement Comment validations. See comment_spec.rb for specification.
  validates :content, length: { minimum: 2, :allow_blank => false, message: "can't be blank" }
end

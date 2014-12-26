class Question < ActiveRecord::Base
  belongs_to :poll

  has_many :possible_answers


end

class AnswerChoice < ApplicationRecord
  validates :text, :question_id, presence: true

  belongs_to :question,
  primary_key: :id,
  foreign_key: :question_id,
  class_name: "Question"

  # has_many :users,
  # primary_key: :id,
  # foreign_key: :answer_choice_id,
  # class_name: "Response"
end

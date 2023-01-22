# == Schema Information
#
# Table name: tasks
#
#  id         :bigint           not null, primary key
#  body       :string           not null
#  status     :string           default("pending")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Task < ApplicationRecord
  belongs_to :user
  enum status: { pending: "pending", progress: "progress", completed: "completed" }
  validates :body, presence: true
end

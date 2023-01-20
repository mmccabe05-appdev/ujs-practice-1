# == Schema Information
#
# Table name: tasks
#
#  id         :bigint           not null, primary key
#  body       :string           not null
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner_id   :bigint           not null
#  user_id    :integer
#
# Indexes
#
#  index_tasks_on_owner_id  (owner_id)
#
# Foreign Keys
#
#  fk_rails_...  (owner_id => users.id)
#
class Task < ApplicationRecord
  belongs_to: :owner, class_name: "User"
end

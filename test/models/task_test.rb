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
require "test_helper"

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

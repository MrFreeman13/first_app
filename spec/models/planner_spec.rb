# == Schema Information
#
# Table name: planners
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  kind_of    :string(255)
#  time       :string(255)
#  money      :integer
#  comments   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Planner do
  pending "add some examples to (or delete) #{__FILE__}"
end

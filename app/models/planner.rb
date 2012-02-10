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

class Planner < ActiveRecord::Base
  attr_accessible :kind_of, :money, :comments
  belongs_to :user

end

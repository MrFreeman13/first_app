class Report < ActiveRecord::Base
  attr_accessible (:kind_of, :money, :comments)

  belongs_to :user

  validates :comments, :presence => true, :length => { :maximum => 100 }
  validates :user_id, :presence => true

  default_scope :order => 'reports.created_at DESC'

end

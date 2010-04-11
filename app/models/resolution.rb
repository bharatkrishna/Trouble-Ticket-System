class Resolution < ActiveRecord::Base
  belongs_to :ticket
  named_scope :lowlevel, :conditions => {:slevel => "Low"}
  named_scope :highlevel, :conditions => {:slevel => "High"}
  named_scope :medlevel, :conditions => {:slevel => "Medium"}
end

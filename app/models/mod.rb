class Mod < ActiveRecord::Base
  attr_accessible :name, :mod
  validates :mod, attachment_presence: true
  has_attached_file :mod,                                                                                                                  
      :path => ":rails_root/public/system/:attachment/:id/:filename",                                                                    
      :url => "/system/:attachment/:id/:filename"
  def self.downloadlist
    self.all
  end
end

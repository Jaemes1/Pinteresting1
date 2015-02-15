class Pins2 < ActiveRecord::Base
	belongs_to :user
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>", :normal => "800x600>" }
end

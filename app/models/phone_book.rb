class PhoneBook < ActiveRecord::Base
  attr_accessible :Address, :Email, :Name, :Number, :Photo
 
  validates :name, :presence => true
end

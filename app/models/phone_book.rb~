class PhoneBook < ActiveRecord::Base
  attr_accessible :Address, :Email, :Name, :Number, :Photo
 
  validates :Name, :presence => true
  validates :Name, :Number, :Email, :uniqueness => true
  validates :Email, :format => { :with => /\w+?@\w+/ , :message => "Email is not in correct format"}
end

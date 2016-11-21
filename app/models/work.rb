class Work < ApplicationRecord
  belongs_to :category
  has_many :pictures, :dependent => :destroy
  accepts_nested_attributes_for :pictures

end

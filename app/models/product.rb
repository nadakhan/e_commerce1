class Product < ActiveRecord::Base
  attr_accessible :age, :description, :name, :attachments_attributes, :comment

  has_many :comments
  has_many :attachments, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :attachments
end

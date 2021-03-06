class SubCategory < ActiveRecord::Base
  attr_accessible :store_id,:category_id,:title, :description
  
  belongs_to :category
  has_many :products  ,dependent: :destroy
  #validates :category_id,presence: true
  validates :store_id,presence: true

  default_scope order: 'sub_categories.created_at DESC'
end

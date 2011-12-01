class Item < ActiveRecord::Base
    belongs_to :category
    
    scope :by_category, lambda { |categoryId| where(['items.category_id = ?', categoryId]) }
end

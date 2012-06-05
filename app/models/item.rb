class Item < ActiveRecord::Base
    belongs_to :category
    
    scope :by_category, lambda { |categoryId| where(['items.category_id = ?', categoryId]) }
    
    has_attached_file :photo,
      :styles => {
        :thumb=> "50x45#",
        :medium => "110x100>",
        :large =>  "200x200>}"
      }
end

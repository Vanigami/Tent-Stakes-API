class Item < ApplicationRecord
    belongs_to :checklist, optional: true
    
end

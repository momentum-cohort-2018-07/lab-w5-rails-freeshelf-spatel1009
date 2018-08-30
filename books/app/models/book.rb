class Book < ApplicationRecord
    belongs_to :user
    validates_presence_of :title
    validates_presence_of :author
end

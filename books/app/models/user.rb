class User < ApplicationRecord
    has_many :books
    validates_presence_of :user_name, length: {minimum: 5}
    validates_uniqueness_of :user_name
end

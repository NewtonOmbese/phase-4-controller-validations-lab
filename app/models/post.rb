class Post < ApplicationRecord
    CATEGORIES = ['Fiction', 'Non-Fiction']

    validates :title, presence: true
    validates :category, inclusion: {
        in:(CATEGORIES)
    }
    validates :content, length: {minimum: 100}

end

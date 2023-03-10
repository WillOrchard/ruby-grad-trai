class Entry < ApplicationRecord
    validates :name, presence: {message: "Error - 'Name' field cannot be empty"}
    validates :link, presence: {message: "Error - 'Link' field cannot be empty"}
end

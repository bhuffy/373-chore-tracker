class Child < ApplicationRecord
    # relationships
    has_many :chores
    has_many :tasks, through: :chores
    
    validates_presence_of :first_name, :last_name

    # scopes
    scope :alphabetical, -> { order(:last_name, :first_name) }
    scope :active, -> { where(active: true) }

    # methods
    def name
        return first_name + " " + last_name
    end
end
class Vehicle < ActiveRecord::Base
    attr_accessible :brand, :model, :color, :type, :plaque

    def complete_name
        "#{brand}, #{model}"
    end
end

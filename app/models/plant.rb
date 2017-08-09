class Plant < ActiveRecord::Base
    
    belongs_to :user
    belongs_to :location
    
    def self.Images
        return [
            'happy_seed.png',
            'orange.png',
            'flower.png',
            'banana.png',
            'pear.png',
            'jalapeno.png',
            'pepper.png',
            'broccoli.png',
            'pumpkin.png',
            'happy_seed.png'
        ]
    end
    
end
class Guitar
    attr_accessor :type, :model, :brand

    @@all = []

    def initialize(type,model,brand)
        @type = type
        @model = model 
        @brand = brand
    end 

    def self.all 
        @@all
    end 

    

end 
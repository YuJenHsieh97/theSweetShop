class Cookies
    attr_accessor :name, :description, :price, :image
    def initialize (name, description, price, image)
        @name = name
        @description = description
        @price = price
        @image = image
    end 
end
@macadamia = Cookies.new('White Chocolate Macadamia','Made with imported white chocolate from Belgium ', '$7','images/macadamia.jpg')
@sugar = Cookies.new('Sugar Cookie', 'Classic sugar cookie', '$5','images/sugar.jpg')
@oreo = Cookies.new('Oreo cookie', 'Everyone loves oreo','$6.50','images/oreo.jpg')
class Cake
    attr_accessor :name, :description, :price, :image
    def initialize (name,description, price, image)
        @name = name
        @description = description
        @price = price
        @image = image
    end
end
@redvelvet =  Cake.new('Red Velvet','Amazing creamcheese with hand battered chocolate', '$7/Slice', 'images/redvelvet.jpg')
@strawberryfresh =  Cake.new('Strawberry Fresh','Fresh Cream w starwberry', '$7.50/Slice', 'images/strawberryfresh.jpg')
@millicrepe =  Cake.new('Matcha Milli Crepe','Matcha cream and fresh crepe layered by hand', '$9/Slice', 'images/millicrepe.jpg')
class Muffin
    attr_accessor :name, :description, :price, :image
    def initialize (name,description, price, image)
        @name = name
        @description = description
        @price = price
        @image = image
    end
end
@honey = Muffin.new('Honey','Sweet muffin with hint of honey', '$2.50', 'images/honeymuff.jpg')
@creamcheese = Muffin.new('Cream Cheese','Muffin with creamy cream cheese in the middle', '$4', 'images/creamcheese.jpg')
@cinnamon = Muffin.new('Cinnamon','Crunchy cinnamon bark muffin', '$5.50','images/cinnamonmuff.jpg')
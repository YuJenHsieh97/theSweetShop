require 'sinatra'
require "sinatra/reloader"
register Sinatra::Reloader
require "./class"

get '/' do
    @honey = Muffin.new('Honey','Matcha cream, Crepe', '$2.50', 'images/honeymuff.jpg')
    @creamcheese = Muffin.new('Cream Cheese','Matcha cream, Crepe', '$4', 'images/creamcheese.jpg')
    @cinnamon = Muffin.new('Cinnamon','Matcha cream, Crepe', '$5.50', 'images/cinnamonmuff.jpg')
    @muffins = [@honey, @creamcheese, @cinnamon]
    erb :main
end

get '/main' do
    erb :home,:layout => :main
end 

get '/buypage' do
    erb :store, :layout => :main
end

get '/partials/cookie' do
    @macadamia = Cookies.new('White Chocolate Macadamia','Made with imported white chocolate from Belgium ', '$7','/images/macadamia.jpg')
    @sugar = Cookies.new('Sugar Cookie', 'Classic sugar cookie', '$5','/images/sugar.jpg')
    @oreo = Cookies.new('Oreo cookie', 'Everyone loves oreo','$6.50','/images/oreo.jpg')
    @cookies = [@macadamia, @sugar, @oreo]
    erb :cookie, :layout => :buypage
end 

get '/partials/cake' do
    @redvelvet =  Cake.new('Red Velvet','Amazing creamcheese with hand battered chocolate', '$7/Slice', '/images/redvelvet.jpg')
@strawberryfresh =  Cake.new('Strawberry Fresh','Fresh Cream w starwberry', '$7.50/Slice', '/images/strawberryfresh.jpg')
@millicrepe =  Cake.new('Matcha Milli Crepe','Matcha cream and fresh crepe layered by hand', '$9/Slice', '/images/millicrepe.jpg')
    @cakes = [@redvelvet, @strawberryfresh, @millicrepe]
    erb :cake, :layout => :buypage
end 

get'/partials/muffin' do 
    @honey = Muffin.new('Honey','Sweet muffin with hint of honey', '$2.50', '/images/honeymuff.jpg')
@creamcheese = Muffin.new('Cream Cheese','Muffin with creamy cream cheese in the middle', '$4', '/images/creamcheese.jpg')
@cinnamon = Muffin.new('Cinnamon','Crunchy cinnamon bark muffin', '$5.50','/images/cinnamonmuff.jpg')
    @muffins = [@honey, @creamcheese, @cinnamon]
    erb :muffin, :layout => :buypage
end 



get '/history' do
    erb :history, :layout => :main
end

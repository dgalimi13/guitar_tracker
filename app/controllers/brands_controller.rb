class BrandController < ApplicationController
    
    get '/brands' do
        @brands = current_user.brands
        erb :"brands/index.html"
    end

    get '/brands/new' do 
        erb :"brands/new.html"
    end  

    get '/brands/:id' do 
        @console = current_user.brands.find(params[:id])
        erb :"brands/show.html"
    end 

    post '/consoles' do 
        if params[:name] != ""
        @console = Console.new
        @console.name = params[:name]
        @console.user = current_user
        @console.save 
            redirect '/consoles'
        else 
            erb :'consoles/new.html'
        end
    end 

    

end

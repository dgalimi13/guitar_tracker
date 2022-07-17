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

end

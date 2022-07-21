class BrandController < ApplicationController
    
    get '/brands' do
        @brands = current_user.brands
        erb :"brands/index.html"
    end

    get '/brands/new' do 
        erb :"brands/new.html"
    end  

    get '/brands/:id' do 
        @brands = current_user.brands.find(params[:id])
        erb :"brands/show.html"
    end 

    post '/brands' do 
        if params[:name] != ""
        @brand = brand.new
        @brand.name = params[:name]
        @brand.user = current_user
        @brand.save 
            redirect '/brands'
        else 
            erb :'brands/new.html'
        end
    end 

    delete "/brands/:id" do
        Brand.destroy(params[:id])
        redirect to "/brands"
    end

    

end

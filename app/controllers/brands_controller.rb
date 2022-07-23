class BrandController < ApplicationController
    
    get '/brands' do
        @brands = current_user.brands
        erb :"brands/index.html"
    end

    get '/brands/new' do 
        erb :"brands/new.html"
    end  

    get "/brands/:id/edit" do
        @brand = current_user.brands.find(params[:id])
        erb :"brands/edit.html"
    end

    post '/brands/:id' do 
        @brand = current_user.brands.find(params[:id])
        erb :"brands/show.html"
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

    delete "/brands/:id/guitar" do
        @brand = current_user.brands.find(params[:id])
        @game = @brand.guitar.find(url: params[:url])
        @game.destroy
        redirect to "/brands/#{@brand.id}"
      end

    

end

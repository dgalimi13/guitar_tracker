class GuitarsController < ApplicationController

    delete "/guitars/:id" do
    @guitar = guitar.find_by(id: params[:id])
    @guitar.destroy
    redirect to "/brands/#{ @guitar.brands.id }"
    end
    
    
    end 
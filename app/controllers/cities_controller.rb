class CitiesController < ApplicationController
    def show
        puts "$$$$$$$$$$$$$#{params}==============="
        @city = City.find(params[:id])
        puts "ssssssssssssssssss#{@city}sssssssssssssssssss"
    end 
end

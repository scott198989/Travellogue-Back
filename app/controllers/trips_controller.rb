class TripsController < ApplicationController
    def index
        trips = Trip.all
        render json: trips
    end

    def create
        trip = Trip.create(trip_params)
        if trip.valid?
            render json: trip
        else
            render json: trip.errors, status: 422
        end
    end
    
    def update
        trip = Trip.find(params[:id])
        trip.update(trip_params)
        if trip.valid?
            render json: trip
        else
            render json: trip.errors, status: 422
        end        
    end
    
    def destroy
        trip = Trip.find(params[:id])
        trips = Trip.all
        if trip.destroy
            render json: trips
        else
            render json: trip.errors
        end
    end

    private
    def trip_params
        params.require(:trip).permit(:title, :entry, :photo, :start_date, :end_date, :city, :state, :country, :region, :international, :user_id)
    end
end
require 'rails_helper'

RSpec.describe "Trips", type: :request do
    # test user created and locally scoped
    let(:user) { User.create(
        email: 'test@example.com',
        password: 'password',
        password_confirmation: 'password'
    )}

    # validates request method GET
    describe "GET /index" do
        it "gets a list of trips" do
            trip = user.trips.create(
                title: "River rafting trip",
                entry: "This was such a great trip! We did some rafting down the Arkansas and Poudre rivers, then hit the Colorado river with packrafts for a weekend long float. We camped riverside overnight and then hopped out in Moab, Utah. Good rapids, developed skills. Need a throw rope and more practice with recovering from big raft flips.",
                country: "United States",
                region:"North America",
                user_id: user.id
            )
            get '/trips'

            trip = JSON.parse(response.body)
            expect(response).to have_http_status(200)
            expect(trip.first['title']).to eq("River rafting trip")
            expect(trip.first['entry']).to eq("This was such a great trip! We did some rafting down the Arkansas and Poudre rivers, then hit the Colorado river with packrafts for a weekend long float. We camped riverside overnight and then hopped out in Moab, Utah. Good rapids, developed skills. Need a throw rope and more practice with recovering from big raft flips.")
            expect(trip.first['country']).to eq("United States")
            expect(trip.first['region']).to eq("North America")
        end
    end

    # validates request method POST
    describe "POST /create" do
        it "creates a new trip" do
            trip_params = {
                trip: {
                    title: "River rafting trip",
                    entry: "This was such a great trip! We did some rafting down the Arkansas and Poudre rivers, then hit the Colorado river with packrafts for a weekend long float. We camped riverside overnight and then hopped out in Moab, Utah. Good rapids, developed skills. Need a throw rope and more practice with recovering from big raft flips.",
                    country: "United States",
                    region:"North America",
                    user_id: user.id
                }
            }
            post '/trips', params: trip_params

            json = JSON.parse(response.body)
            expect(json['title']).to eq("River rafting trip")
            expect(json['entry']).to eq("This was such a great trip! We did some rafting down the Arkansas and Poudre rivers, then hit the Colorado river with packrafts for a weekend long float. We camped riverside overnight and then hopped out in Moab, Utah. Good rapids, developed skills. Need a throw rope and more practice with recovering from big raft flips.")
            expect(json['country']).to eq("United States")
            expect(json['region']).to eq("North America")
        end
    end

    # validates request method PATCH
    describe "PATCH /update" do
        it "updates a trip" do
            trip_params = {
                trip: {
                    title: "River rafting trip",
                    entry: "This was such a great trip! We did some rafting down the Arkansas and Poudre rivers, then hit the Colorado river with packrafts for a weekend long float. We camped riverside overnight and then hopped out in Moab, Utah. Good rapids, developed skills. Need a throw rope and more practice with recovering from big raft flips.",
                    country: "United States",
                    region:"North America",
                    user_id: user.id
                }
            }
            post '/trips', params: trip_params
            trip = Trip.first
            
            updated_trip_params = {
                trip: {
                    title: "Pacuare rafting trip",
                    entry: "This was such a great trip! We got to raft the Pacuare and swim a couple of rapids, learned a lot from the guide who is a rafting guide year round. Good rapids, developed skills.",
                    country: "Costa Rica",
                    region:"Central America",
                    user_id: user.id
                }
            }
            
            patch "/trips/#{trip.id}", params: updated_trip_params
            updated_trip = Trip.find(trip.id)
            
            expect(response).to have_http_status(200)
            
            json = JSON.parse(response.body)
            expect(json['title']).to eq("Pacuare rafting trip")
            expect(json['entry']).to eq("This was such a great trip! We got to raft the Pacuare and swim a couple of rapids, learned a lot from the guide who is a rafting guide year round. Good rapids, developed skills.")
            expect(json['country']).to eq("Costa Rica")
            expect(json['region']).to eq("Central America")
        end
    end

    # validates request method DESTROY
    describe "DELETE /destroy" do
        it "deletes a trip" do
            trip_params = {
                trip: {
                    title: "River rafting trip",
                    entry: "This was such a great trip! We did some rafting down the Arkansas and Poudre rivers, then hit the Colorado river with packrafts for a weekend long float. We camped riverside overnight and then hopped out in Moab, Utah. Good rapids, developed skills. Need a throw rope and more practice with recovering from big raft flips.",
                    country: "United States",
                    region:"North America",
                    user_id: user.id
                }
            }
            post '/trips', params: trip_params
            trip = Trip.first

            expect{delete "/trips/#{trip.id}"}.to change(Trip, :count).by(-1)
        end
    end
end
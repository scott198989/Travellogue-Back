require 'rails_helper'

RSpec.describe Trip, type: :model do
    it "should validate title" do
        trip = Trip.create(
            title: nil,
            entry: "This was such a great trip! We did some rafting down the Arkansas and Poudre rivers, then hit the Colorado river with packrafts for a weekend long float. We camped riverside overnight and then hopped out in Moab, Utah. Good rapids, developed skills. Need a throw rope and more practice with recovering from big raft flips.",
            country: "United States",
            region:"North America",
            user_id:"1"
        )
        expect(trip.errors[:title]).to_not be_empty
    end

    it "should validate entry" do
        trip = Trip.create(
            title: "River rafting trip",
            entry: nil,
            country: "United States",
            region:"North America",
            user_id:"1"
        )
        expect(trip.errors[:entry]).to_not be_empty
    end

    it "should validate country" do
        trip = Trip.create(
            title: "River rafting trip",
            entry: "This was such a great trip! We did some rafting down the Arkansas and Poudre rivers, then hit the Colorado river with packrafts for a weekend long float. We camped riverside overnight and then hopped out in Moab, Utah. Good rapids, developed skills. Need a throw rope and more practice with recovering from big raft flips.",
            country: nil,
            region:"North America",
            user_id:"1"
        )
        expect(trip.errors[:country]).to_not be_empty
    end
    
    it "should validate region" do
        trip = Trip.create(
            title: "River rafting trip",
            entry: "This was such a great trip! We did some rafting down the Arkansas and Poudre rivers, then hit the Colorado river with packrafts for a weekend long float. We camped riverside overnight and then hopped out in Moab, Utah. Good rapids, developed skills. Need a throw rope and more practice with recovering from big raft flips.",
            country: "United States",
            region: nil,
            user_id:"1"
        )
        expect(trip.errors[:region]).to_not be_empty
    end

    it "should validate user_id" do
        trip = Trip.create(
            title: "River rafting trip",
            entry: "This was such a great trip! We did some rafting down the Arkansas and Poudre rivers, then hit the Colorado river with packrafts for a weekend long float. We camped riverside overnight and then hopped out in Moab, Utah. Good rapids, developed skills. Need a throw rope and more practice with recovering from big raft flips.",
            country: "United States",
            region: "North America",
            user_id: nil
        )
        expect(trip.errors[:user_id]).to_not be_empty
    end
end

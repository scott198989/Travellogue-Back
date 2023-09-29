user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")

seedTrips = [
    {
        id: 1,
        title: "Ancient structures at Ani",
        entry: "So cool being in one of the oldest cities in the world",
        photo: "ani",
        start_date: "2021-08-01",
        end_date: "2021-08-20",
        city: "Ani",
        state: "Kars",
        country: "Turkiye",
        region: "West Asia",
        international: true,
    },
    {
        id: 2,
        title: "OB sunny days and hilly walks",
        entry: "Great to visit the fam and hit the beaches! Leo loved playing with Lizzi at dog beach.",
        photo: "ob",
        start_date: "2022-04-20",
        end_date: "2022-05-25",
        city: "San Diego",
        state: "California",
        country: "United States",
        region: "North America",
        international: false,
    },
    {
        id: 3,
        title: "So lit",
        entry: "It was an interesting time",
        photo: "aussie",
        start_date: "2019-01-10",
        end_date: "2019-01-17",
        city: "Brisbane",
        state: "",
        country: "Australia",
        region: "Oceania",
        international: true,
    }
]

seedTrips2 = [
    {
        id: 4,
        title: "fun, hot, and exciting",
        entry: "This was my favorite trip! Years and years and years ago",
        photo: "bahamas",
        start_date: "2002-06-05",
        end_date: "2002-06-10",
        city: "",
        state: "",
        country: "Bahamas",
        region: "North America",
        international: true,
    },
    {
        id: 5,
        title: "peaceful easy feeling",
        entry: "Hawaii was gorgeous! The beaches, mountains, forests...such a magical place",
        photo: "hi",
        start_date: "2023-12-23",
        end_date: "2023-12-30",
        city: "Kauai",
        state: "Hawaii",
        country: "United States",
        region: "Oceania",
        international: false,
    }
]

seedTrips.each do |trip|
    user1.trips.create(trip)
    p "creating: #{trip}"
end

seedTrips2.each do |trip|
    user2.trips.create(trip)
    p "creating: #{trip}"
end
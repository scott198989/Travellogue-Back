Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins 'travelogue-app.onrender.com'
        resource '*',
        headers: ["Authorization", "Access-Control-Allow-Origin"],
        expose: ["Authorization"],
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        max_age: 600
    end
  end
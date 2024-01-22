Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      # origins 'laughhost3001.onrender.com'
      origins 'localhost:3001'
      resource '*',
      headers: ["Authorization"],
      expose: ["Authorization"],
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      max_age: 600
    end
  end
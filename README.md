
## Travellouge Backend

### Introduction

Hey, welcome to the backend of Travellouge! Another project straight outta my time at LEARN Academy. This one's a web app built with Ruby on Rails and PostgreSQL. The whole idea is to keep track of your epic adventures or small getaways. And yep, you guessed it, it's CRUD friendly.

### Features

- 🌍 **Plan Your Adventures**: Add, update, and remove your future travel destinations.
- 📸 **Share Your Moments**: Post pictures and share stories of your journey.
- 🔐 **Secure and Personal**: User authentication thanks to Devise and devise-jwt.

### Tech Stack and Dependencies

#### Ruby version 3.2.0
- Update Homebrew and install Ruby:  
  ```bash
  brew update
  brew install ruby
  ```

#### Rails version 7.0.5
- Install Rails:  
  ```bash
  gem install rails
  ```

#### PostgreSQL version 14
- Install PostgreSQL:  
  ```bash
  brew install postgresql@14
  ```

#### Other Cool Gems & Libraries
- Puma for the web server
- Devise for authentication
- Devise-jwt for JWT-based auth
- Rack CORS for handling CORS issues
- RSpec for all your testing needs

### Setup
- Install those gems:  
  ```bash
  bundle install
  ```
- Fire up the PostgreSQL database:  
  ```bash
  brew services start postgresql
  ```
- Create that database:  
  ```bash
  rails db:create
  ```

### Team

Scott Tuschl
Sara Cherry
Suri Rodriguez
Ramgel Romo

### Contact

If you think this project is dope and wanna chat, hit me up on LinkedIn. You can find the link on my GitHub profile. More of my work is also available on my [portfolio](https://www.scott-tuschl.com).

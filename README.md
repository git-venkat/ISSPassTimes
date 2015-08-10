# ISS Pass Times

*Project Setup*

- Clone the project
- Run `bundle install`
- Update `database.yml` file with MySQL credentials
- Run `rake db:migrate`
- Run `rake db:seed` to load the CSV file data (Locations)
- Install Redis, which is used for Sidekiq background processes
  - Mac: `brew install redis`
  - Ubuntu: `sudo apt-get install redis-server`
- After successful install, start the redis server `redis-server`
- Run `bundle exec sidekiq` in a separate terminal to start off the background process.
- Background job is schedules for everyday to load the ISS Pass times. We use `whenever` gem for task scheduling.

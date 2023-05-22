# Quiniela Project

Quiniela is a Ruby on Rails application designed to manage predictions for sports matches. It allows users to make predictions for upcoming matches, earn points based on the accuracy of their predictions, and compete with other users.
Features

## User authentication:
   Users can sign up, log in, and log out. Also can see their points.
## Add club:
   Users can add more clubs with name for the matches and predictions.
## Prediction management: 
Users can create, update, and delete their predictions for matches.
## Match management:
Admin users can create and manage matches, including the teams involved, match date, and result.
##Points calculation:
The application automatically calculates and assigns points to users based on the accuracy of their predictions.
## Email notifications: 
Users receive email notifications for match events.

### Installation

To run the Quiniela application locally, follow these steps:

    $ git clone https://github.com/aramirezLox/Quiniela.git
Navigate to the project directory:
    
    $ cd quiniela
 Install the dependencies:
 
    $ bundle install
Set up the database:
    
    $ rails db:setup
Start the Rails server:

    $ rails server
    
Open your web browser and visit http://localhost:3000 to access the application.

### Usage

 Sign up for an account or log in if you already have one.
 Explore the available matches and make your predictions.
 View your points and ranking on the leaderboard.
 Keep an eye on your email for important notifications.
 Users can manage matches and update match results.

### Contributing

Contributions to Quiniela are welcome! If you find any bugs, have feature requests, or would like to contribute code, please open an issue or submit a pull request on the GitHub repository.

### License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

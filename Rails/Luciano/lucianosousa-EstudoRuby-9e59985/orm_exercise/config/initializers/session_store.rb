# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_orm_exercise_session',
  :secret      => '0c8c20eb4d43253a9f018530f9d00622893827e7aaca607b8f8a285b4a45f3a409bdbd12af58929e8da79b23a5325e8cc30c022cc5b5fe189d3da5fd594b51e4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

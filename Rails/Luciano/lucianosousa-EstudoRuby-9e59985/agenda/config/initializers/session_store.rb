# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_agenda_session',
  :secret      => 'e4e26069e5143e130dd0b1c23c4ad0510471d7c1726e6da5839c475e5eafe03d3fceb7fd5448788651f51fc4e356b199cd28d9f1c39814a60bfd5075ba1c1d43'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

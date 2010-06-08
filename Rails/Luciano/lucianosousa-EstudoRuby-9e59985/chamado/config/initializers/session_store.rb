# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_chamado_session',
  :secret      => '887b7851a4233cd41ab3a68a2af6cc551f6fe913f2db57663ba533542c816f581d744977b30d90426f3d43f306653ac4aa82c46b44963beb011367ec9dca797d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

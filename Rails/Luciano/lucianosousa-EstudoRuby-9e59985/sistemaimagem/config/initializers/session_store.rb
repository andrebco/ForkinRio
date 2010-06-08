# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sistemaimagem_session',
  :secret      => '908a45bb881d856cdfc733c6c5dc30a447836c03eeef708e7289d3d293593ab482445f4de5c55858d638b2bd233cd3813cda73263dc9722f683cf0b503a39952'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

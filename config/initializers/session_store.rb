# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cutie_session',
  :secret      => '2aff03355d26fa0d9b6acebebf74a6f20e128d17f3e40173bbb4d921138b9b039c0a879784988e67061cbd458747836c12bd1fdd4c3beaf9a29b39b43a285501'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

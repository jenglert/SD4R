# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_SD4R_session',
  :secret      => '80b373c045198650ae497ef98da9f1925e0271b11266f46f8c30e7144f14414886e6bdb85516ab0ce8658e5889ca6f4b06369c694fedb97165cb9c95ed7b6433'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

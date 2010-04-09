# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ttsystem_session',
  :secret      => '3efdd7c04b402454839345cd0b65d3b242012be8b29ca373cc5c6c96946d6f189750d41c8fd18715d4a6495b7425a651dee201523579431ff75fe99dca2decb8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

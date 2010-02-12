# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_suncity_session',
  :secret      => '1b27d4a9b4f0c199138e46322d4868fe73cad2cf5920b2fbe54f459b5132e038c1673b03759f30f4cd911e34e8fc301af45c61da937bfe3b1daa7c10e90c5564'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

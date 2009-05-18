# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ComNeedlecandy_session',
  :secret      => '363fa677bc4523a1d9bfb8a174552beae8fa47b372259204925e6393e94b74c948776aa17693d9d3cf3bde52d42cca037f9b657123f23e3549d7072a1aca35dd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_devyn-web_session',
  :secret      => 'e2cae59a35f7e3700b767d01e91a0c0d11f4484c49ffb2397e3be8c957e5b11e509090f1c260716dd116bad287556b78499fc9436c969f7213cd45e578b123b3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

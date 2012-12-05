Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '264822796973610', '673475840c3dce2139639bf769a010cb', {:client_options => {:ssl => {:verify => false}}}
  provider :twitter, 'gkj9xAYz7IEjLA5XV0aCw', 'RMJbnnzzQb32qkNrIuHStAtRf2sellW72X3aMPgwYk', {:client_options => {:ssl => {:verify => false}}}
end
class Account < ActiveResource::Base
#  self.site = 'http://odiseo.apslabs.com.ar/api/v1.0/users/:user_id'
  
  self.site = 'http://odiseo.apslabs.com.ar/api/v1.0/accounts/:user_id'
  self.user = 'admin'
  self.password = 'apslabs'
  self.timeout = 15
end
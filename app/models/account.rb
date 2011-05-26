class Account < ActiveResource::Base
  #self.site ="http://odiseo-dev.heroku.com/accounts"
  self.site = "http://localhost:8080/"
  #self.user = "lmpetek"
  #self.password = "lmpetek"
  #self.element_name = "account"
end

#class PersonResource < ActiveResource::Base
#  self.site = "http://api.people.com:3000/"
#  self.proxy = "http://user:password@proxy.people.com:8080"
#end
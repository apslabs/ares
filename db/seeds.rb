# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# Examples:
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
#
# para resetear las DB 
# rake db:setup # Create the database, load the schema, and initialize with the seed data (use db:reset to also drop the db first)

Rol.create!(:detalle => 'administrador')
Rol.create!(:detalle => 'operador')

Tasaiva.create!(:detalle => 'tasa 21%',:porcentaje => "21.00")
Tasaiva.create!(:detalle => 'tasa 10.5%',:porcentaje => "10.50")
Tasaiva.create!(:detalle => 'tasa 0%',:porcentaje => "0.00")

condicionesiva = Condicioniva.create!([{ :detalle => 'responsable inscripto', :letra => 'A'},
  {:detalle => 'exento', :letra => 'B'},
  {:detalle => 'consumidor final', :letra => 'B'}])

user1 = User.create!(:email => "lmpetek@gmail.com", :rol_id => 1, :password => "lmpetek", :password_confirmation => "lmpetek")
user2 = User.create!(:email => "luis@ap-sys.com.ar", :rol_id => 1, :password => "lmpetek", :password_confirmation => "lmpetek")

user1.empresas.create!(:detalle => "empresa sa", :cuit => "30123456780",:direccion => "helguera 1234", :telefono => "44445555", :default_company => true)
user2.empresas.create!(:detalle => "empresa prueba", :cuit => "30876543210",:direccion => "xxxxx 1234", :telefono => "no tiene", :default_company => false)

#Cliente.create!(:codigo => "1",:razonsocial => "cliente 1", :cuit => "30646483561", :telefono => "44445555",:condicioniva_id => 1,:empresa_id => 1)
#Cliente.create!(:codigo => "2",:razonsocial => "cliente 2", :cuit => "30646483562", :telefono => "55556666",:condicioniva_id => 2,:empresa_id => 1)
#Cliente.create!(:codigo => "3",:razonsocial => "cliente 3", :cuit => "30646483563", :telefono => "66667777",:condicioniva_id => 3,:empresa_id => 2)

(1..100).each {|i| Cliente.create!(:codigo => i.to_s,
  :razonsocial => "Cliente " + i.to_s,
  :cuit => (30646480000 + i).to_s,
  :telefono => (4000000 + i).to_s,
  :condicioniva_id => 1,
  :empresa_id => 1 )}
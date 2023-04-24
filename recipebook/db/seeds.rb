User.destroy_all
u1 = User.create :name => 'Riley', :email => 'riley@gmail.com', :password => 'chicken', :admin => true
u2 = User.create :name => 'Phoebe', :email => 'phoebe@gmail.com', :password => 'chicken'
puts "#{ User.count } users"
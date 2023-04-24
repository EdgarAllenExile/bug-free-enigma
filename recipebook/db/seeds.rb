User.destroy_all
u1 = User.create :email => 'riley@gmail.com', :password => 'chicken', :admin => true
u2 = User.create :email => 'phoebe@gmail.com', :password => 'chicken'
puts "#{ User.count } users"
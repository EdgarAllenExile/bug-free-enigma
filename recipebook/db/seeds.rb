User.destroy_all
u1 = User.create :name => 'ADMIN', :email => 'admin@gmail.com', :password => 'chicken', :admin => true
u2 = User.create :name => 'Riley', :email => 'riley@gmail.com', :password => 'chicken'
u3 = User.create :name => 'Phoebe', :email => 'phoebe@gmail.com', :password => 'chicken'
puts "#{ User.count } users total!"

Recipe.destroy_all
r1 = Recipe.create :title => 'Eggs on Toast', :category => 'Breakfast', :intensity => 1, :serves => 1, :steps => "1. Put the toast on and put the pan on medium heat. 2. Fry the egg. 3. Consume!", :image => "https://upload.wikimedia.org/wikipedia/commons/f/f0/Fried_Egg_2.jpg"
r2 = Recipe.create :title => 'Coffee'
puts "#{Recipe.count} recipes total!"

Ingredient.destroy_all
i1 = Ingredient.create :title => 'egg', :category => 'Basic'
i2 = Ingredient.create :title => 'Bread', :category => 'Basic'
puts "#{Ingredient.count} ingredients total!"

Quantity.destroy_all
q1 = Quantity.create :unit => 'egg', :amount => 2 
q2 = Quantity.create :unit => 'slice', :amount => 2
puts "#{Quantity.count} quantities total!"

puts "Users and Recipes"
u1.recipes << r1

puts "Recipes and Ingredients"
r1.ingredients << i1 << i2

puts "Ingredients and Quantities"
i1.quantity << q1
i2.quantity << q2
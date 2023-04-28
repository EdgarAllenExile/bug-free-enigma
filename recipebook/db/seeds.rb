User.destroy_all
u1 = User.create :name => 'ADMIN', :email => 'admin@gmail.com', :password => 'chicken', :admin => true
u2 = User.create :name => 'Riley', :email => 'riley@gmail.com', :password => 'chicken'
u3 = User.create :name => 'Phoebe', :email => 'phoebe@gmail.com', :password => 'chicken'
puts "#{ User.count } users total!"

Recipe.destroy_all
r1 = Recipe.create :title => 'Eggs on Toast', :category => 'Breakfast', :cusine => 'Breakfast', :dietary => 'None', :cook_time => 15, :difficulty => 1, :serves => 1, :image => "https://upload.wikimedia.org/wikipedia/commons/f/f0/Fried_Egg_2.jpg"
r2 = Recipe.create :title => 'Coffee', :category => 'Breakfast', :cusine => 'Breakfast', :dietary => 'None', :cook_time => 15, :difficulty => 1, :serves => 1, :image => "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Roasted_coffee_beans.jpg/1200px-Roasted_coffee_beans.jpg"
r3 = Recipe.create :title => 'Brown Rice Salad', :category => 'Lunch', :cusine => 'Dinner', :dietary => 'Vego', :cook_time => 20, :difficulty => 1, :serves => 6, :image => "https://img.sndimg.com/food/image/upload/q_92,fl_progressive,w_1200,c_scale/v1/img/recipes/14/39/97/picpFRQwG.jpg"
r4 = Recipe.create :title => 'Corn and Pumpkin Soup', :category => 'Dinner', :cusine => 'Soup', :dietary => 'Vego / GF', :cook_time => 30, :difficulty => 2, :serves => 4, :image => "https://hercanberra.com.au/wp-content/uploads/2020/06/BFFM_PumpkinSoup_1_edited.jpg"
r5 = Recipe.create :title => 'Broccoli Risotto', :category => 'Dinner', :cusine => 'Carb', :dietary => 'None', :cook_time => 30, :difficulty => 2, :serves => 4, :image => "https://static01.nyt.com/images/2010/01/19/health/19recipehealth_600/19recipehealth_600-articleLarge-v2.jpg"

puts "#{Recipe.count} recipes total!"

Ingredient.destroy_all
i1 = Ingredient.create :title => 'Egg', :category => 'Basic'
i2 = Ingredient.create :title => 'Bread', :category => 'Basic'

i3 = Ingredient.create :title => 'Coffee', :category => 'Basic'

i4 = Ingredient.create :title => 'Brown Rice', :category => 'Basic'
i5 = Ingredient.create :title => 'Mushroom', :category => 'Basic'
i6 = Ingredient.create :title => 'Spring Onion', :category => 'Basic'
i7 = Ingredient.create :title => 'Capsicum', :category => 'Basic'
i8 = Ingredient.create :title => 'Currants', :category => 'Basic'
i9 = Ingredient.create :title => 'Cashews', :category => 'Basic'
i10 = Ingredient.create :title => 'Dressing', :category => 'Basic'

i11 = Ingredient.create :title => 'Butternut Pumpkin', :category => 'Basic'
i12 = Ingredient.create :title => 'Onions', :category => 'Basic'
i13 = Ingredient.create :title => 'Garlic', :category => 'Basic'
i14 = Ingredient.create :title => 'Stock', :category => 'Basic'
i15 = Ingredient.create :title => 'Cream', :category => 'Basic'
i16 = Ingredient.create :title => 'Creamed Corn', :category => 'Basic'
i17 = Ingredient.create :title => 'Corn', :category => 'Basic'

i18 = Ingredient.create :title => 'Stock', :category => 'Basic'
i19 = Ingredient.create :title => 'Broccoli', :category => 'Basic'
i20 = Ingredient.create :title => 'Onion', :category => 'Basic'
i21 = Ingredient.create :title => 'Arborio Rice', :category => 'Basic'
i22 = Ingredient.create :title => 'Parsley', :category => 'Basic'
i23 = Ingredient.create :title => 'Lemon', :category => 'Basic'
i24 = Ingredient.create :title => 'Parmesan', :category => 'Basic'
puts "#{Ingredient.count} ingredients total!"

Quantity.destroy_all
q1 = Quantity.create :unit => 'Whole', :amount => 2 
q2 = Quantity.create :unit => 'Slice', :amount => 2

q3 = Quantity.create :unit => 'Scoop', :amount => 3 

q4 = Quantity.create :unit => 'cup', :amount => 1
q5 = Quantity.create :unit => 'cap', :amount => 8 
q6 = Quantity.create :unit => 'stalk', :amount => 3
q7 = Quantity.create :unit => 'Whole', :amount => 1 
q8 = Quantity.create :unit => 'cup', :amount => 0.25
q9 = Quantity.create :unit => 'cup', :amount => 0.25
q10 = Quantity.create :unit => 'cup', :amount => 1

q11 = Quantity.create :unit => 'whole', :amount => 1 
q12 = Quantity.create :unit => 'whole', :amount => 2
q13 = Quantity.create :unit => 'bulb', :amount => 1 
q14 = Quantity.create :unit => 'cups', :amount => 4
q15 = Quantity.create :unit => 'cup', :amount => 0.5 
q16 = Quantity.create :unit => 'can', :amount => 1
q17 = Quantity.create :unit => 'can', :amount => 1

q18 = Quantity.create :unit => 'litre', :amount => 1.5 
q19 = Quantity.create :unit => 'head', :amount => 1
q20 = Quantity.create :unit => 'whole', :amount => 1
q21 = Quantity.create :unit => 'cups', :amount => 3
q22 = Quantity.create :unit => 'bunch', :amount => 1
q23 = Quantity.create :unit => 'whole', :amount => 1
q24 = Quantity.create :unit => 'cup', :amount => 1
puts "#{Quantity.count} quantities total!"

Step.destroy_all
s1 = Step.create :step_no => 1, :process => "Put the toast on and put the pan on medium heat."
s2 = Step.create :step_no => 2, :process => "Fry the egg."
s3 = Step.create :step_no => 3, :process => "Consume!"

s4 = Step.create :step_no => 1, :process => "Make coffee, try to remember a better time"

s5 = Step.create :step_no => 1, :process => "Cook rice & let cool. Dice veg."
s6 = Step.create :step_no => 2, :process => "Combine and Dress."

s7 = Step.create :step_no => 1, :process => "Chop pumpkin and onion into small pieces (smaller the better as it will take less time to cook and make it easier to blend.!"
s8 = Step.create :step_no => 2, :process => "Combine pumpkin, onions and butter in a large pot and cook on high until onions translucent, Add stock, cover and cook on high until pumpkin is soft. ~20m."
s9 = Step.create :step_no => 3, :process => "Puree and stir in corn, worcestershire sauce and cream. Reheat, sprinkle with chives and serves."
s10 = Step.create :step_no => 4, :process => "Consume!"

s11 = Step.create :step_no => 1, :process => "Bring stock to a gentle simmer over low heats Trim the tough end off the broccoli stalk, cut the florets into small pieces and finely chop the remaining stalks"
s12 = Step.create :step_no => 2, :process => "Peel and finely chop onion, then place into a large high-sided plan on medium heat and add broccoli stalk and 1 table spoon of olive oil."
s13 = Step.create :step_no => 3, :process => "Cook for 10 minutes or until soft, stirring regularly, after 5 minutes stir in bacon (or add bacon at the end if eating with vegetarian) Add in the rice to toast for 2 minutes"
s14 = Step.create :step_no => 4, :process => "Add a ladleful of stock and wait until absorbed before adding another, stirring constantly and adding ladlefuls of stock until the rice is cooked - around 16-18 minutes. Halfway through stir in the broccoli florets. !"
s15 = Step.create :step_no => 4, :process => "Meanwhile, tear the top leafy half of the parsley  into a pestle and mortar and pound into a paste with a pinch of sea salt. Squeeze in half a lemon and muddle in 2 tablespoons of olive oil."
s16 = Step.create :step_no => 4, :process => "Add most of the cheese into the risotto, squeeze in the remaining lemon juice, mix together. Add an extra ladle of stock to make it oozy then turn off heat."

puts "#{Step.count} steps total!"

Note.destroy_all
n1 = Note.create :note_text => "You hate eggs on toast"
n2 = Note.create :note_text => "Why even use this?"
n3 = Note.create :note_text => "Demonstration purposes"

n4 = Note.create :note_text => "Fuck I love coffee"

n5 = Note.create :note_text => "You can add in extra vegetables"
n6 = Note.create :note_text => "You can add in extra vegetables"
n7 = Note.create :note_text => "You can add in extra vegetables"

puts "#{Note.count} notes total!"

puts "Users and Recipes"
u1.recipes << r1

puts "Recipes and Ingredients"
r1.ingredients << i1 << i2
r2.ingredients << i3
r3.ingredients << i4 << i5 << i6 << i7 << i8 << i9 << i10
r4.ingredients << i11 << i12 << i13 << i14 << i15 << i16 << i17
r5.ingredients << i18 << i19 << i20 << i21 << i22 << i23 << i24

puts "Recipes and Quantities"
r1.quantities << q1 << q2
r2.quantities << q3
r3.quantities << q4 << q5 << q6 << q7 << q8 << q9 << q10
r4.quantities << q11 << q12 << q13 << q14 << q15 << q16 << q17
r5.quantities << q18 << q19 << q20 << q21 << q22 << q23 << q24

puts "Ingredients and Quantities"
i1.quantities << q1
i2.quantities << q2
i3.quantities << q3
i4.quantities << q4
i5.quantities << q5
i6.quantities << q6
i7.quantities << q7
i8.quantities << q8
i9.quantities << q9
i10.quantities << q10
i11.quantities << q11
i12.quantities << q12
i13.quantities << q13
i14.quantities << q14
i15.quantities << q15
i16.quantities << q16
i17.quantities << q17
i18.quantities << q18
i19.quantities << q19
i20.quantities << q20
i21.quantities << q21
i22.quantities << q22
i23.quantities << q23
i24.quantities << q24

puts "Recipes and Steps"
r1.steps << s1 << s2 << s3
r2.steps << s4
r3.steps << s5 << s6
r4.steps << s7 << s8 << s9 << s10
r5.steps << s11 << s12 << s13 << s14 << s15 << s16

puts "Recipes and Notes"
r1.notes << n1 << n2 << n3
r2.notes << n4
r3.notes << n5
r4.notes << n6
r5.notes << n7
# RecipeBook

## Overview
The initial aim of this project is to create a single point of reference to consolidate the recipes that I use frequently. 

Currently, I use a rough GoogleDoc to save recipes that I wish to reference in the future. I would like this app to replace this document and add in additional functionality.

The additional functionality I would like to include is to be able to filter all recipes by set keywords or ingredients. This would make deciding what to eat easier (hopefully)!.


## Current Issues
### Deployment
Currently, this is not deployed. It was anticipated that this project would be self-hosted at rileymercer.com. However, there have been some issued with the hosting provider. This is due to the fact that the hosting provider has made some critical errors in their routing rules and hasn't been able to fix as yet.

It is anticipated that this will be rectified in the future.

### Dealing With Multiple Tables
There are some critical errors that currently arise from the use of joined tables. These are:
- The edit recipe page displays incorrectly when attempting to edit a recipe with multiple ingredients, steps or notes. It is expected that this would not be a difficult issue to troubleshoot, however I ran out of time before submission.
- Adding multiple ingredients, steps and notes significantly effects performance. This is assumed to arise from inefficient use of javascript to add new fields. This was at the limit of my knowledge at the time and I do not know how long it will take to remedy.

### Filtering
A user is currently unable to search by less than three search terms. 

I do not anticipate that this will be difficult to remedy, however I was unable to complete this functionality in time.


## Technologies Used
### Languages
- HTML
- CSS
- Javascript
- Ruby [2.7.2]

### Gems & Plugins
- Rails [7.0.4]
- Bootsrap
- Bcrypt
- Sassc
- Jquery

### Database
- Postgresql

## Tables
The following is an overview of the tables that exist within my current project. I have outlined any relational information that may be useful as well as the columns of each table. I have ommitted any date stamp info.

### Standard Tables
#### Users
##### Columns
- Name: "name"    Type: text
- Name: "email"    Type: text
- Name: "password_digest"    Type: string
- Name: "admin"    Type: boolean

##### Relationships
- has_many :recipes


#### Recipes
##### Columns
- Name: "title"    Type: text
- Name: "user_id"    Type: integer
- Name: "category"    Type: text
- Name: "cusine"    Type: text
- Name: "dietary"    Type: text
- Name: "cook_time"    Type: integer
- Name: "difficulty"    Type: integer
- Name: "serves"    Type: integer
- Name: "image"    Type: text

##### Relationships
- belongs_to :user
- has_and_belongs_to_many :ingredients
- has_and_belongs_to_many :quantities
- has_and_belongs_to_many :steps
- has_and_belongs_to_many :notes

Recipe table also accepts nested attributes for 
- quantities
- ingredients
- steps
- notes

#### Quantities
##### Columns
- Name: "title"    Type: text
- Name: "amount"    Type: text

##### Relationships
- has_and_belongs_to_many :ingredients
- has_and_belongs_to_many :recipes


#### Ingredients
##### Columns
- Name: "title"    Type: text
- Name: "category"    Type: text

##### Relationships
- has_and_belongs_to_many :quantities, :optional => true
- has_and_belongs_to_many :recipes


#### Steps
##### Columns
- Name: "step_no"    Type: integer
- Name: "process"    Type: text

##### Relationships
- has_and_belongs_to_many :recipe


#### Notes
##### Columns
- Name: "step_text"    Type: text

##### Relationships
- has_and_belongs_to_many :recipe


### Join(ed) Tables
These are joined simply with "{name}_id" of each table that is joined.
### Tables
- ingredients_quantities
- ingredients_recipes
- notes_recipes
- quantities_recipes
- recipes_steps
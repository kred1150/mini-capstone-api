Ruby on Rails Creation Cheat Sheet
==================================

## Initial GitHub Repository Creation
* ``` git init ```
* ``` git add --all ```
* ``` git commit -m 'commit message' ```
* create a repository in Github called 'rails_app_name'
* copy and paste commands from Github to push initial commit

## Push Code to GitHub (Post Repository Creation)
* ``` git add --all ```
* ``` git commit -m 'commit message' ```
* ``` git push origin main ```

### Initial Terminal Commands
1. cd into the folder you want to create your rails app inside of
2. ``` rails new 'rails_app_name' ``` - Creates new folder for rails app
3. ``` cd 'rails_app_name' ``` - CD into the path of the rails app folder
4. Run initial Github terminal commands (located above)

### Create Initial Controller and Model Terminal Commands
1. Create initial controller 
  * ``` rails generate controller 'controller_name' ```
2. Push Code to GitHub
3. Create initial model
  * ``` rails generate model 'Model_Name' attribute_name:string attribute_name:integer etc... ```
  * Note model_name **must** be capitalized as it is the name of a class
  * Note there is only a colon between each attribute_name and its class(ie. string, integer, boolean etc.)
  * Note that there are no commas between attribute_names, just a single space
4. Push Code to Github

### Create and Populate Database via Seeds
1. Open up Seeds.rb file in your text editor
  * 'rails_app_name'/db/seeds.rb
2. Enter the initial database info into the seeds file (Example Below)
![Screen Shot 2022-05-03 at 7 33 55 PM](https://user-images.githubusercontent.com/104310612/166608633-b737cd92-2fd5-4cf8-a2ca-43df06dd89c1.png)
3. In terminal create your database
  * ``` rails db:create ``` 
4. Migrate your newly created database
  * ``` rails db:migrate ```
5. Populate your database via the seeds file you edited in step 2
  * ``` rails db:seed ```
  * **Do Not Run ``` rails db:seed ``` more than once.** If you run it multiple tiems it will duplicate the date in the seeds file to your database.


**Please note steps 3-5 can be combined via the following code, but becareful when combining steps**
  * ``` rails db:create db:migrate db:seed ```





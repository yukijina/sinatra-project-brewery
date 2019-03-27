#Sinatra Project (Brewery!)

##We have two class (class name is singular)
class Brewery      has_many  has_secure_password
class BeerBrand    belongs_to

##Brewery has many beer brand
Brewery table
:name "Lagnitas"   #string
:email  "lag@gmail"   #string - unique log in attribute
:password "****"      #password_digest
:city "Lagnitas, CA"  #string


##Brand belongs to brewery
Brand table
:brand_name "IPL"   #string
:style  "Indian Pale Ale"     #string
:ABV   "7.2%"    #string
:brewery_id       #integer

#Brewery
Brewery signs up with name, email, password and city.
Brewery logs in with email and password
Brewery can see all Brewery's beer brand      
Brewery can see it's beer brand               #SHOW
Brewery can create it's own beer brand        #NEW
Brewery can edit it's own beer brand          #EDIT
Brewery can delete it's own beer brand        #DELETE
Brewery can't create, edit and delete other brewery's beer brand
Brewery can log out

##Controllers
ApplicationController
BreweriesController  (plural)
BrandsController     (plural)


###ApplicationController
main controller
inherit from Sinatra
enable session
include helper method
has home route '/'

###BreweriesController
inherit from ApplicationController
has signup, login, logout, show route

###BrandsController
inherit from ApplicationController
has show, create, edit, delete


##RESTful Route
ApplicationController
 -Home:  
 get '/'  erb:index  
   render home/index page
   has welcome message
   has signup, login, logout links


###BreweriesController
 -Signup:  
 get '/signup'    erb:new  
    render signup form
    form has column of name, email, password, city and submit button

 post '/signup'   redirect '/breweries/show'

 -Login
 get '/login'     erb:login    
     render login form
     login form has email and password
 post '/login'    redirect '/breweries/show'

 -Logout
 get 'logout'     redirect '/'  

 -Brewery SHOW
 get '/breweries/show'  erb: '/breweries/show'  #=>individual brewery

###BrandsController
 -Beer Brand Index
 get '/brands'     erb :'/brands/index'
   render all Breweries and brands information

 -New: create a new brand
 get '/brands/new'  erb :'/brands/new'
   render create a new brand form, including name, style and ABV
 post '/brands'     redirect '/brands/:id'

 -SHOW: Individual brand
 get '/brands/:id'  erb :'/brands_show'

 -Edit: Edit brand content
 get '/brands/:id/edit'   erb :"/brands/edit"
   render edit form
 patch 'brands/:id/edit'  redirect "/brands/:id"

 -DELETE: delete brand content -include form in show page
 get '/brands/:id/delete'
 delete '/brands/index'

##View - erb (directly:plural)
 index
 layout

 breweries/new  (signup)
 breweries/show
 breweries/login

 brands/index  (all brands info)
 brands/new
 brands/show  (individual brand info)
 brands/edit

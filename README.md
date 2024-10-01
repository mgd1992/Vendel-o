Vendelo ** Still in development

Vendelo is a platform for buying and selling second-hand items that users no longer need in their homes. Whether you're looking to declutter or find great deals on used items, Vendelo provides a simple and user-friendly interface to connect buyers and sellers.

A rails web app built to buy and sell things

Install
Clone the repository
bash gh repo clone mgd1992/vendelo
cd vendelo
Check your Ruby version

ruby -v
The ouput should start with something like ruby 2.6.5

If not, install the right ruby version using rbenv (it could take a while):

rbenv install 2.6.5
Install dependencies
Using Bundler:

bundle

bundle install
Add secret keys
Using Cloudinary:

touch .env
echo '.env*' >> .gitignore

Sign up to cloudinary and add your own secret key to file:
CLOUDINARY_URL=cloudinary://.....
Initialize the database
rails db:create db:migrate db:seed
Launch server
rails s

* Deployment instructions

* ...

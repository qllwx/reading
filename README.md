# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-linux]
Rails 5.1.4

* System dependencies

* Configuration

* Database creation
rails g scaffold sex name:string
rails g scaffold grade name:string
rails g scaffold classname name:string
rails g scaffold student idcard:string name:string grade:references classname:references sitno:integer score:integer
rails g scaffold user idcard:string username:string sex:integer email:string grade:string classname:string sit:integer score:integer
rails g scaffold report idcard:references bookname:string bookreport:text
rails g scaffold book bookname:string summary:string pic:string

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* program

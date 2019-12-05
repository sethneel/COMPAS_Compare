#!/bin/bash
#rails new project --database=postgresql
#cd project 
A=""
while read p; do
  A+=" $p"
done <../extend_cols.txt
rails generate scaffold Record $A
rails generate scaffold User email:string password_hash:string
rails generate scaffold Comparison user:references record:references record:references choice:integer 
#rails db:create
#rails db:migrate
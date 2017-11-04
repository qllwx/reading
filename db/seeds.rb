# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#import form csh.csv
require 'csv'    
CSV.foreach("./db/2016_sm_chs.csv", :headers => true) do |row|
 
     Csh.create!(row.to_hash) if (row.to_s.include?"清流县")
  
end


Grade.delete(:all)
Grade.create(name: '一年级')
Grade.create(name: '二年级')
Grade.create(name: '三年级')
Grade.create(name: '四年级')
Grade.create(name: '五年级')
Grade.create(name: '六年级')
Grade.create(name: '七年级')
Grade.create(name: '八年级')
Grade.create(name: '九年级')
Grade.create(name: '高一')
Grade.create(name: '高二')
Grade.create(name: '高三')
Sex.create(sex: '男')
Sex.create(sex:'女')
(1..14).each do |i|
   Classname.create(classname: "(#{i})班")
end


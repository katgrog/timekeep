# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Watch.all.delete_all

User.create(
  [{
    first_name: "Katie", 
    last_name: "Grogan", 
    username: "katgrog", 
    email: "katie@steer.me"
    },
    {
    first_name: "Tim", 
    last_name: "McDonald-Bell", 
    email: "tim@steer.me"
    }
    ])


Watch.create([
  		{   name: "Backup Black", 
  			brand: "Swatch", 
  			description: "Add a sophisiticated touch to every look with BACKUP BLACK (SUOB715). This iconic style sports an easy-to-read dial in clean black and white Arabic numerals, indexes, and a date window. A matching strap in black finishes the look.", 
  			pre_owned: false,  
  			price_in_pence: 5000, 
  			gender: "unisex"
  		}, 
  		{   name: "Classic Digital Casio", 
  			brand: "Casio", 
  			description: "A stylish update of a classic Casio design, this retro timepiece is built for stellar contemporary styling. The piece features a digital display and a fold over clasp. Perfect for everyday and street styling.", 
  			pre_owned: true, 
  			price_in_pence: 4050,
  			gender: "unisex"
  		}, 
  		{   name:"1960s Vintage Raketa", 
  			brand: "Raketa", 
  			description: "Beautiful, pre-loved, minimalist Russian original with 2603 Raketa movement, shock protection and tan leather strap.", 
  			pre_owned: true, 
  			price_in_pence: 12000, 
  			gender: "unisex"
  		}, 
  		{   name: "Max Bill Chronoscope", 
  			brand: "Junghans", 
  			description: "As one of the most extraordinary designers of the last century, the architect, painter, sculptor and product designer Max Bill left behind an extensive life's work, including one of the most fascinating watch collections of recent decades.", 
  			pre_owned: false, 
  			price_in_pence: 200000,
  			gender: "m"
  		}
  		])







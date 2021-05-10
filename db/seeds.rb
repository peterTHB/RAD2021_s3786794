# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Image.create(url_name: "men_images/asdrubal-luna-OenHGpOnsv0-unsplash.jpg", title:"Autumn Feels",
             caption:"Chill vibes", price:"$44.99", human_type: "male", popular: true,
             new_arrival: false, saved_to_list: false)
Image.create(url_name: "men_images/tyler-nix-Zhh3WM2ko3s-unsplash.jpg", title:"Retro 80s",
             caption:"Blast to the past", price:"$38.99", human_type: "male", popular: false, new_arrival: false,
             saved_to_list: false)
Image.create(url_name: "men_images/vine-ramazani-N2KtqMU-KAY-unsplash.jpg", title:"Outdoor Chills",
             caption:"Gettin' ready to drop a beat", price:"$28.99", human_type: "male", popular: false,
             new_arrival: true, saved_to_list: false)
Image.create(url_name: "men_images/zahir-namane-TjUJJACTav4-unsplash.jpg", title:"Business Casual",
             caption:"Straight to the point", price:"$34.99", human_type: "male", popular: true, new_arrival: true,
             saved_to_list: false)

Image.create(url_name: "women_images/marionel-luciano-f615lHRUJqw-unsplash.jpg", title:"Summer Flow",
             caption:"Feel the breeze", price:"$49.99", human_type: "female", popular: false, new_arrival: false,
             saved_to_list: false)
Image.create(url_name: "women_images/mark-adriane-V7IJzp_ElQc-unsplash.jpg", title:"Bright Days",
             caption:"Sunshine everyday", price:"$29.99", human_type: "female", popular: true, new_arrival: false,
             saved_to_list: false)
Image.create(url_name: "women_images/monica-silva-VlMMBxSZuSI-unsplash.jpg", title:"Nightly Allure",
             caption:"Draws in the eyes", price:"$34.99", human_type: "female", popular: false, new_arrival: true,
             saved_to_list: false)
Image.create(url_name: "women_images/tamara-bellis-3t6rfsCaWiQ-unsplash.jpg", title:"Chill Plains",
             caption:"Dress to please the eyes", price:"$32.99", human_type: "female", popular: false,
             new_arrival: false, saved_to_list: false)

Image.create(url_name: "kids_images/ben-white-EMZxDosijJ4-unsplash.jpg", title:"Autumn Duos",
             caption:"A set for kids", price:"$52.99", human_type: "kids", popular: false, new_arrival: false,
             saved_to_list: false)
Image.create(url_name: "kids_images/sander-weeteling-Itbk3pUYhpY-unsplash.jpg", title:"Playful Autumn",
             caption:"To play without worries", price:"$41.99", human_type: "kids", popular: true, new_arrival: true,
             saved_to_list: false)
Image.create(url_name: "kids_images/sourav-ahmmad-fwJMG9zm3dI-unsplash.jpg", title:"Cool Vibes",
             caption:"Kids have the right to be cool", price:"$26.99", human_type: "kids", popular: false,
             new_arrival: true, saved_to_list: false)
Image.create(url_name: "kids_images/terricks-noah-n9R0MN3XGvY-unsplash.jpg", title:"Smarts",
             caption:"Dress to impress", price:"$32.99", human_type: "kids", popular: true, new_arrival: false,
             saved_to_list: false)

#rails generate scaffold Image url_name:string title:string caption:string price:string human_type:string popular:boolean new_arrival:boolean saved_to_list:boolean --force
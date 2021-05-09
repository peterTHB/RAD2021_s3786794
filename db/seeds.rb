# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Image.create(url_name: "/men_images/asdrubal-luna-OenHGpOnsv0-unsplash.jpg", human_type: "male", popular: true, new_arrival: false, saved_to_list: false)
Image.create(url_name: "/men_images/tyler-nix-Zhh3WM2ko3s-unsplash.jpg", human_type: "male", popular: false, new_arrival: false, saved_to_list: false)
Image.create(url_name: "/men_images/vine-ramazani-N2KtqMU-KAY-unsplash.jpg", human_type: "male", popular: false, new_arrival: true, saved_to_list: false)
Image.create(url_name: "/men_images/zahir-namane-TjUJJACTav4-unsplash.jpg", human_type: "male", popular: true, new_arrival: true, saved_to_list: false)

Image.create(url_name: "/women_images/marionel-luciano-f615lHRUJqw-unsplash.jpg", human_type: "female", popular: false, new_arrival: false, saved_to_list: false)
Image.create(url_name: "/women_images/mark-adriane-V7IJzp_ElQc-unsplash.jpg", human_type: "female", popular: true, new_arrival: false, saved_to_list: false)
Image.create(url_name: "/women_images/monica-silva-VlMMBxSZuSI-unsplash.jpg", human_type: "female", popular: false, new_arrival: true, saved_to_list: false)
Image.create(url_name: "/women_images/tamara-bellis-3t6rfsCaWiQ-unsplash.jpg", human_type: "female", popular: false, new_arrival: false, saved_to_list: false)

Image.create(url_name: "/kids_images/edward-cisneros-r_Tnjj6TB30-unsplash.jpg", human_type: "kids", popular: false, new_arrival: false, saved_to_list: false)
Image.create(url_name: "/kids_images/sander-weeteling-Itbk3pUYhpY-unsplash.jpg", human_type: "kids", popular: true, new_arrival: true, saved_to_list: false)
Image.create(url_name: "/kids_images/sourav-ahmmad-fwJMG9zm3dI-unsplash.jpg", human_type: "kids", popular: false, new_arrival: true, saved_to_list: false)
Image.create(url_name: "/kids_images/terricks-noah-n9R0MN3XGvY-unsplash.jpg", human_type: "kids", popular: true, new_arrival: false, saved_to_list: false)
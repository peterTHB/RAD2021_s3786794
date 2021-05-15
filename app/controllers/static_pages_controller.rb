class StaticPagesController < ApplicationController
  # default :from => 'any_from_address@example.com'

  @@classCollectionURLS = Array.new
  @@currentIndex = 0

  def home
    @collectionURLS = Array.new
    @popularURLS = Array.new
    @femaleURLS = Array.new
    @menURLS = Array.new
    @kidsURLS = Array.new
    @newArrivalsURLS = Array.new

    @currentCollectionItem = ""

    Image.find_each do |item|
      @collectionURLS.append(item.url_name)
      if item.popular >= 8
        @popularURLS.append(item.url_name)
      end
      if item.human_type == "female"
        @femaleURLS.append(item.url_name)
      end
      if item.human_type == "male"
        @menURLS.append(item.url_name)
      end
      if item.human_type == "kids"
        @kidsURLS.append(item.url_name)
      end
      if item.new_arrival == true
        @newArrivalsURLS.append(item.url_name)
      end
    end

    @collectionURLS = @collectionURLS.shuffle
    @popularURLS = @popularURLS.shuffle

    @@classCollectionURLS = @collectionURLS
    @currentCollectionItem = @@classCollectionURLS.first
    @@currentIndex = 0
  end

  def savedToList
    @savedItem = @@classCollectionURLS.at(@@currentIndex)

    image = Image.find_by(url_name: @savedItem)
    image.saved_to_list = true
    image.save

    puts @savedItem

    if @@currentIndex < @@classCollectionURLS.length - 1
      @@currentIndex = @@currentIndex + 1
    else
      @@currentIndex = 0
    end

    @currentCollectionItem = @@classCollectionURLS.at(@@currentIndex)
    puts @currentCollectionItem
  end

  def help_support
  end

  # def send_signup_email(user)
  #   @user = user
  #   mail( :to => @user.email,
  #         :subject => 'Thanks for signing up for our Fashion App')
  # end
end

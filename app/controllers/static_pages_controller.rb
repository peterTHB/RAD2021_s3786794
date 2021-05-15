class StaticPagesController < ApplicationController
  @@classCollectionURLS = Array.new
  @@currentIndex = 0

  def home
    @collectionURLS = Array.new
    @popularURLS = Array.new

    @currentCollectionItem = ""

    Image.find_each do |item|
      @collectionURLS.append(item.url_name)
    end

    Image.where(popular: true).find_each do |item|
      @popularURLS.append(item.url_name)
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
end

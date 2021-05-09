class StaticPagesController < ApplicationController
  @@classCollectionURLS = Array.new
  @@currentIndex = 0

  def home
    # Prior code to instantiate model with images
    # @menImages = Dir.entries("#{Rails.root}/app/assets/images/men_images/")
    # @womenImages = Dir.entries("#{Rails.root}/app/assets/images/women_images/")
    # @kidsImages = Dir.entries("#{Rails.root}/app/assets/images/kids_images/")
    #
    # @menImagesFiltered = @menImages.select { |image| image.match("\.(jpe?g|png)") }
    # @womenImagesFiltered = @womenImages.select { |image| image.match("\.(jpe?g|png)") }
    # @kidsImagesFiltered = @kidsImages.select { |image| image.match("\.(jpe?g|png)") }
    #
    # @menImagesFiltered = @menImagesFiltered.map { |url| "men_images/#{url}" }
    # @womenImagesFiltered = @womenImagesFiltered.map { |url| "women_images/#{url}" }
    # @kidsImagesFiltered = @kidsImagesFiltered.map { |url| "kids_images/#{url}" }
    #
    # @menImagesFiltered.each do |n|
    #   unless Image.exists?(url_name: n)
    #     image = Image.create(url_name: n, human_type: "male", popular: true, new_arrival: true, saved_to_list: false)
    #   end
    # end
    #
    # @womenImagesFiltered.each do |n|
    #   unless Image.exists?(url_name: n)
    #     image = Image.create(url_name: n, human_type: "female", popular: true, new_arrival: false, saved_to_list: false)
    #   end
    # end
    #
    # @kidsImagesFiltered.each do |n|
    #   unless Image.exists?(url_name: n)
    #     image = Image.create(url_name: n, human_type: "kids", popular: false, new_arrival: false, saved_to_list: false)
    #   end
    # end

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

    # @currentCollectionItem = @collectionURLS.first
    # @@currentIndex = 0

    @@classCollectionURLS = @collectionURLS
    @currentCollectionItem = @@classCollectionURLS.first
    @@currentIndex = 0
  end

  def savedToList
    @savedItem = @@classCollectionURLS.at(@@currentIndex)

    #save to images model
    # image = Image.find_by(url_name: @savedItem)
    # image.update(saved_to_list: true)

    puts @savedItem

    if @@currentIndex < @@classCollectionURLS.length
      @@currentIndex = @@currentIndex + 1
    else
      @@currentIndex = 0
    end

    @currentCollectionItem = @@classCollectionURLS.at(@@currentIndex)
    puts @currentCollectionItem

    image = @currentCollectionItem
    image.saved_to_list = true
    image.save
  end

  def help_support
  end
end

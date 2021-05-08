class StaticPagesController < ApplicationController
  def home
    #Change to hash
    @menImages = Dir.entries("#{Rails.root}/app/assets/images/men_images/")
    @womenImages = Dir.entries("#{Rails.root}/app/assets/images/women_images/")
    @kidsImages = Dir.entries("#{Rails.root}/app/assets/images/kids_images/")

    @menImagesFiltered = @menImages.select { |image| image.match("\.(jpe?g|png)") }
    @womenImagesFiltered = @womenImages.select { |image| image.match("\.(jpe?g|png)") }
    @kidsImagesFiltered = @kidsImages.select { |image| image.match("\.(jpe?g|png)") }

    @menImagesFiltered = @menImagesFiltered.map { |url| "men_images/#{url}" }
    @womenImagesFiltered = @womenImagesFiltered.map { |url| "women_images/#{url}" }
    @kidsImagesFiltered = @kidsImagesFiltered.map { |url| "kids_images/#{url}" }

    @menImagesFiltered.each do |n|
      unless Image.exists?(url_name: n)
        image = Image.create(url_name: n, human_type: "male", popular: 8, new_arrival: true)
      end
    end

    @womenImagesFiltered.each do |n|
      unless Image.exists?(url_name: n)
        image = Image.create(url_name: n, human_type: "female", popular: 8, new_arrival: false)
      end
    end

    @kidsImagesFiltered.each do |n|
      unless Image.exists?(url_name: n)
        image = Image.create(url_name: n, human_type: "kids", popular: 8, new_arrival: false)
      end
    end

    # puts @menImagesFiltered
    # puts @womenImagesFiltered
    # puts @kidsImagesFiltered


  end

  def help_support

  end
end

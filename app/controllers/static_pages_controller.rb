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

    puts @menImagesFiltered
    puts @womenImagesFiltered
    puts @kidsImagesFiltered
  end

  def help_support

  end
end

class StaticPagesController < ApplicationController
  def home
    #Change to hash
    @collectionImages = Dir.entries("#{Rails.root}/app/assets/images/collection_test/")
    @popularImages = Dir.entries("#{Rails.root}/app/assets/images/popular_test/")

    @collectionImagesFiltered = @collectionImages.select { |image| image.match("\.(jpe?g|png)") }
    @popularImagesFiltered = @popularImages.select { |image| image.match("\.(jpe?g|png)") }

    @collectionImagesFiltered = @collectionImagesFiltered.map { |url| "collection_test/#{url}" }
    @popularImagesFiltered = @popularImagesFiltered.map { |url| "popular_test/#{url}" }

    puts @collectionImagesFiltered
    puts @popularImagesFiltered
  end

  def help_support

  end
end

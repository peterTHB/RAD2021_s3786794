class FashionController < ApplicationController
  @@imageSavedList = new Array
  @@currentSavedItem = new Image
  @@currentIndex = 0

  def index
    @message = 'Hello!'
    @extra = 'I am the fashion controller '
  end

  def saved_list
    @savedToListModel = Array.new

    Image.where(saved_to_list: true).find_each do |item|
      @savedToListModel.append(item.url_name)
    end

    if @savedToListModel.empty?
      @savedToListModel.append("no_item.png")
    else
      @@imageSavedList = @savedToListModel
      @@currentSavedItem = @savedToListModel.at(0)
      @@currentIndex = 0
    end

  end

  def savedToListOrNot
    @currentImageInCarousel = @@imageSavedList.at(@@currentIndex)

    Image.find_by(url_name: @currentImageInCarousel).saved_to_list =
      !Image.find_by(url_name: @currentImageInCarousel).saved_to_list

    Image.find_by(url_name: @currentImageInCarousel).save
  end

  def moveForward
    if (@@currentIndex < @@imageSavedList.length - 1)
      @@currentIndex = @@currentIndex + 1
    else
      @@currentIndex = 0
    end
  end

  def moveBackward
    if (@@currentIndex > 0)
      @@currentIndex = @@currentIndex - 1
    else
      @@currentIndex = @@imageSavedList.length - 1
    end
  end
end

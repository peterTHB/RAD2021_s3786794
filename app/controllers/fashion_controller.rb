class FashionController < ApplicationController
  @@imageSavedList
  @@currentIndex = 0

  # Check if there is are images that have been saved
  # by the user
  # Otherwise, returns a no_item.png to the carousel
  def saved_list
    @savedToListModel = Array.new

    Image.where(saved_to_list: true).find_each do |item|
      @savedToListModel.append(item.url_name)
    end

    if @savedToListModel.empty?
      @savedToListModel.append("no_item.png")
    else
      @@imageSavedList = @savedToListModel
      @@currentIndex = 0
      @currIfSaved = "Saved";
    end
  end

  # Checks if current item is saved by the user
  # If item has not been saved anymore, the corresponding image
  # will stay in the view till a page refresh occurs, or the user
  # comes back to the saved list at a later time
  def savedToListOrNot
    @currentImageInCarousel = @@imageSavedList.at(@@currentIndex)

    image = Image.find_by(url_name: @currentImageInCarousel)
    image.saved_to_list = !image.saved_to_list
    image.save
  end

  # Helper methods to move the carousel in the view
  # forwards or backwards
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

class Image < ApplicationRecord
  def saveToList?
    saved_to_list != nil
  end

  def saveToList
    self.saved_to_list = true
  end

  def saveToList!
    saveToList
    save!
  end

  def unsavedFromList
    self.saved_to_list = false
  end

  def unsavedFromList
    unsavedFromList
    save!
  end
end

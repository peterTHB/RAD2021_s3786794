class CollectionController < ApplicationController
  def collection_index
    @allCollectionsURLS = Array.new

    Image.find_each do |item|
      @allCollectionsURLS.append(item.url_name)
    end
  end

  def women
    @womenURLS = Array.new

    Image.where(human_type: "female").find_each do |item|
      @womenURLS.append(item.url_name)
    end
  end

  def men
    @menURLS = Array.new

    Image.where(human_type: "male").find_each do |item|
      @menURLS.append(item.url_name)
    end
  end

  def kids
    @kidsURLS = Array.new

    Image.where(human_type: "kids").find_each do |item|
      @kidsURLS.append(item.url_name)
    end
  end

  def new_arrivals
    @newArrivalsURLS = Array.new

    Image.where(new_arrival: true).find_each do |item|
      @newArrivalsURLS.append(item.url_name)
    end
  end
end

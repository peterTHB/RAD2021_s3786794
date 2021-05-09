class FashionController < ApplicationController
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
    end


  end
end

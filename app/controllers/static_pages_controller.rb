class StaticPagesController < ApplicationController
  respond_to :js, :json, :html
  require 'sendgrid-ruby'
  include SendGrid

  @@classCollectionURLS = Array.new
  @@currentIndex = 0
  # "Rails Email Validation Explained | Mailtrap Blog", Mailtrap, 2021. [Online].
  # Available: https://mailtrap.io/blog/rails-email-validation/. [Accessed: 19- May- 2021].
  REGEX_PATTERN = /^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+[A-Za-z]{2,6}$/

  # Helps produce the view in static_pages/home
  # All arrays are used to populate the carousels in the home view
  # with prerequisite pictures for each section
  # All images are referenced in /db/seed.rb
  def home
    @collectionURLS = Array.new
    @popularURLS = Array.new
    @femaleURLS = Array.new
    @menURLS = Array.new
    @kidsURLS = Array.new
    @newArrivalsURLS = Array.new

    @currentCollectionItem = ""

    #Error here
    Image.find_each do |item|
      @collectionURLS.append(item.url_name)
      if item.popular >= 8
        @popularURLS.append(item.url_name)
      end
      if item.human_type == "female"
        @femaleURLS.append(item.url_name)
      end
      if item.human_type == "male"
        @menURLS.append(item.url_name)
      end
      if item.human_type == "kids"
        @kidsURLS.append(item.url_name)
      end
      if item.arrival <= 3
        @newArrivalsURLS.append(item.url_name)
      end
    end

    # Random array shuffle per requirements
    @collectionURLS = @collectionURLS.shuffle
    @popularURLS = @popularURLS.shuffle

    @@classCollectionURLS = @collectionURLS
    @currentCollectionItem = @@classCollectionURLS.first
    @@currentIndex = 0
  end

  # Method to save current item from Items banner
  # into the Images model, while also going through
  # the array that stores the items
  def savedToList
    @savedItem = @@classCollectionURLS.at(@@currentIndex)

    image = Image.find_by(url_name: @savedItem)
    image.saved_to_list = true
    image.save

    if @@currentIndex < @@classCollectionURLS.length - 1
      @@currentIndex = @@currentIndex + 1
    else
      @@currentIndex = 0
    end

    @currentCollectionItem = @@classCollectionURLS.at(@@currentIndex)
  end

  def help_support
  end

  # Method to send a text-only email to a specified email
  # written in the provided form in the Newsletter section
  # Done through SendGrid
  # Sendgrid.com, 2021. [Online]. Available: https://sendgrid.com/docs/for-developers/sending-email/rubyonrails/.
  # [Accessed: 19- May- 2021].
  def sendEmail
    @email = params[:emailTyped]

    if checkEmailRegex(@email)
      from = Email.new(email: 's3786794@student.rmit.edu.au')
      to = Email.new(email: @email)
      subject = 'RAD2021 Assignment 2 Subscription'
      content = Content.new(type: 'text/plain', value: 'Thanks for subscribing!')
      mail = Mail.new(from, subject, to, content)

      sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
      response = sg.client.mail._('send').post(request_body: mail.to_json)
      puts response.status_code
      puts response.body
      puts response.headers
    else
      puts "Invalid Email"
    end
  end

  # Method to check for the regex of email addresses
  # typed into the form in the Newsletter section
  # Returns true if address is legitimate, otherwise
  # returns false
  def checkEmailRegex(email)
    check = false

    if REGEX_PATTERN.match email
      check = true
    end

    puts REGEX_PATTERN.match email

    return check
  end

end

# Creating a Calendar using Nylas v3 Ruby SDK

# Importing dependencies
require 'dotenv/load'
require 'nylas'

# Initializing Nylas API Client
nylas = Nylas::Client.new(
    api_key: ENV["API_KEY"]
)

begin
    new_calendar = nylas.calendars.create(
        identifier: ENV["GRANT_ID"],
    )
    
    # print the calendar
    puts new_calendar

rescue => error
    puts "Nylas Error: #{error}"
end
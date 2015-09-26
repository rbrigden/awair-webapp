require "#{Rails.root}/app/helpers/messages_helper"
include MessagesHelper



desc "This task is called by the heroku scheduler"
task :update_feed => :environment do
  puts "Updating feed..."
  	message_update
  puts "done."
end


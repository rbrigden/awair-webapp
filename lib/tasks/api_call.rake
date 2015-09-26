desc "This task is called by the heroku scheduler"
task :update_feed => :environment do
  puts "Updating feed..."
  MessageAPI.update
  puts "done."
end


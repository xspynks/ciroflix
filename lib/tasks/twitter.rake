namespace :twitter do
  desc 'Search twitter for tweets with #prefirociro and retweets them.'
  task retweet: :environment do
    TwitterManager::Retweet.call
  end
end
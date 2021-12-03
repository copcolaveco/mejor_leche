scheduler: bundle exec rake resque:scheduler
web: bundle exec rails server -p $PORT
resque: QUEUE=* bundle exec rake environment resque:work

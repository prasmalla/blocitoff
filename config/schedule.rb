# http://github.com/javan/whenever
set :output, 'log/cron.log'

every 1.day, at: '12am' do
  rake "todo:delete_items"
end
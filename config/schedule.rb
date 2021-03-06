# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

set :output, 'log/cron_log.log'

every 1.day do
  runner 'User.check_subscription_expired'
end

every 1.day do
  runner 'User.check_overdue_payments'
end

every 1.day do
  runner 'User.check_due_soon_payments'
end

every 2.weeks do
  runner 'User.check_landlord_signed_up'
end

every 2.weeks do
  runner 'User.check_tenant_signed_up'
end
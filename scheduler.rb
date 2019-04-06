require 'clockwork'
require 'active_support/time'
require './config/boot'
require './config/environment'

module Scheduler
  include Clockwork

  configure do |config|
    config[:sleep_timeout] = 5
    config[:logger] = Logger.new('log/scheduler.log')
    config[:tz] = 'GMT'
    config[:max_threads] = 15
     config[:thread] = true
  end

end


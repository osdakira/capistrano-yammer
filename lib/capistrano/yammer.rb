module Capistrano
  module Yammer
  end
end

require "capistrano/yammer/version"
require "yammer_client"
load File.expand_path("../tasks/yammer.rake", __FILE__)

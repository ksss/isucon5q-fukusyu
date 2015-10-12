require_relative './app.rb'

if ENV["STACKPROF"] == '1'
require 'stackprof'
Dir.mkdir('/tmp/stackprof') unless File.exist?('/tmp/stackprof')
use StackProf::Middleware, enabled: true,
                           mode: :wall,
                           interval: 10,
                           save_every: 1,
                           path: '/tmp/stackprof'
end
run Isucon5::WebApp

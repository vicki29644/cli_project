#environment

require 'pry'
require 'rest-client'
require 'json'

require 'dotenv/load'

require 'bundler/setup'
Bundler.require(:default)

require_relative './got_cli/cli.rb' #Know the difference between the requires.
require_relative './got_cli/api.rb'
require_relative './got_cli/got.rb'
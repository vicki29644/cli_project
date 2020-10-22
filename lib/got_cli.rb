#environment

require 'pry'
require 'rest-client'
require 'json'

require 'dotenv/load'

require 'bundler/setup'
Bundler.require(:default)

require_relative './got_cli/cli.rb'   #pathway for these files.
require_relative './got_cli/api.rb'
require_relative './got_cli/got.rb'
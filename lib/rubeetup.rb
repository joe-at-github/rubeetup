require 'rubeetup/version'
require 'rubeetup/requester'
require 'rubeetup/errors'
require 'rubeetup/request_builder'
require 'rubeetup/request'

module Rubeetup

  def self.setup(args)
    auth_options = get_auth_data(args)
    agent.new(auth_options)
  end

  # Include this call in a new file: config/initializers/rubeetup.rb
  # args must be a Hash including -->  api_key: 'val'
  def self.set_default_auth(args)
    @auth_options = args
  end

  def self.agent
    @agent = Requester
  end

  # Trivial version
  # TO DO: Should be modified to allow for tokens as well
  def self.get_auth_data(args)
    args || @auth_options
  end

end

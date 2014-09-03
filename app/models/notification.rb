require 'twilio-ruby'
# require_relative '../../credentials'

class Notification
  attr_accessor :to_number

  def initialize(options={})
    self.to_number = options[:to_number]
    account_sid = "AC4a302245272557d08759db79325b3d03"
    auth_token = "a21e5a54d236020e2512026e8256714e"
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def text
    message = @client.messages.create(body: random_compliment, to: '+17033996134', from: '+12027514352')
    end


  def random_compliment
    compliments = ['Keep at it!', 'Go have a beer!']
    compliments.sample
  end

end
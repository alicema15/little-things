class V4Controller < ApplicationController
  def home
  end
  def twitter
    @tweets = []
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "e1wbSWO7THJEDM2tQinT9yM28"
      config.consumer_secret     = "QXqIjs9C4UWVDF7QRoqfJ6JCMcXnIhtj7ADq4DHeavUPmWWgt3"
      config.access_token        = "3375645891-FiymDwZlPQxU2NRveEubQY8FRm4NZtBKFlxgAje"
      config.access_token_secret = "axs1vEDbRmwwPvdXlorbM0bUXlADG2dxYJfz0hVO1r8l4"
    end
    
    client.search("to:@YosemiteNPS snow", result_type: "recent").take(3).collect do |tweet|
      @tweets.push("#{tweet.user.screen_name}: #{tweet.text}")
    end
  end
  def twilio
    require 'twilio-ruby'
    account_sid = 'ACcf8327013b6da0e4b2bf29e5eb466b29'
    auth_token = '4ef31b9054c133a0279381a83ec2a953'
    @client = Twilio::REST::Client.new account_sid, auth_token
    @client.api.account.messages.create(
    from: '+19147031763',
    to: '+19148158006',
    body: 'I just finished Practicum 3, Vignette 4!'
    )

  end
end

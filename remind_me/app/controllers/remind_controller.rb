require 'twilio-ruby'
require 'rufus-scheduler'

class RemindController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index

  end


  def add
    @message = Reminder.new(remind_params)
    @message.save
    message = @message["message"]
    phone = @message["phone"]
    if @message["date"].to_s == Time.now.strftime("%Y-%m-%d").to_s
      calculate(message, phone)
      redirect_to '/message'
    else
      redirect_to '/thanks'
    end
  end

  def thanks
  end


  def message
  end

  #Returns a hash
  def today
    date = Time.now.strftime("%Y-%m-%d")
    @message = Reminder.where("date" == date)
    return @message
  end


  def send_now
    #@todays_message =today
    message= today[0]["message"]
    phone = today[1]["phone"]


    calculate(message, phone)

  end


  #This calculates when to send message
  def calculate(message, phone)
    account_sid = ''
    auth_token  = ''
    @client = Twilio::REST::Client.new account_sid, auth_token
    message = @client.account.messages.create(:body => message,
                                              :to => "+1#{phone}",
                                              :from => "() -6896"
    )
    puts message.to
  end

# Never trust parameters from the scary internet, only allow the white list through.
  private
  def remind_params
    params.permit(:message, :phone, :date)
  end


end

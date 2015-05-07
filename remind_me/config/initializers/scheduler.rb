require 'rufus-scheduler'


class Schedule < RemindController

  @message = RemindController.new

  scheduler = Rufus::Scheduler.start_new
  scheduler.every("100s") do
    #Do Something here..
    @message.send_now
  end

end
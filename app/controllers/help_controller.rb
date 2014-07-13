class HelpController < ApplicationController

  def help
    pdf = Help.new.print_help
    send_data pdf, type: 'application/pdf', filename: 'help.pdf', disposition: 'inline'
  end

  def rave
	  pdf = Rave.new.print_rave
	  send_data pdf, type: 'application/pdf', filename: 'rave.pdf', disposition: 'inline'
  end

end

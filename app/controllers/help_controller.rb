class HelpController < ApplicationController
  def help
    pdf = Help.new.to_pdf
    send_data pdf, type: 'application/pdf', filename: 'help.pdf', disposition: 'inline'
  end
end

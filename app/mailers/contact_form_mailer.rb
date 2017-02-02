class ContactFormMailer < ApplicationMailer
  default from: 'jensenlocksmithing@gmail.com'

  def contact_form(params)
    @name = params['name'] || ''
    @email = params['email'] || ''
    @contact_time = params["contact_time"] || ''
    @subject = params["subject"] || ''
    @message = params["message"] || ''

    mail(to: "jensenlocksmithing@gmail.com", subject: 'New Message from the Jensen Locksmithing Website')
  end

end

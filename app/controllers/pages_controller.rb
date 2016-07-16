class PagesController < ApplicationController
  def home
  end

  def residential
  end

  def contact
  end

  def contact_form

    ContactFormMailer.contact_form(params).deliver
    flash[:notice] = "Your message has been sent successfully"
    render "contact"

end

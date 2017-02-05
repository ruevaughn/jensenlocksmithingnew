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

  def blog
    @blog_posts = BlogPost.all
  end

  def automotive
    @main_text = PageContent.where(page: 'automotive', content_name: 'Main Text').first
  end
end

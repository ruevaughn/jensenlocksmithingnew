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
    @main_text = PageContent.where(page: 'automotive', content_name: 'main_text').first
  end

  def automotive_st_george
    @bottom_text1 = PageContent.where(page: 'automotive', content_name: "Bottom Text 1").first
    @bottom_text2 = PageContent.where(page: 'automotive', content_name: "Bottom Text 2").first
    @bottom_text3 = PageContent.where(page: 'automotive', content_name: "Bottom Text 3").first
  end

  def automotive_springdale
    @bottom_text1 = PageContent.where(page: 'automotive', content_name: "Bottom Text 1").first
    @bottom_text2 = PageContent.where(page: 'automotive', content_name: "Bottom Text 2").first
    @bottom_text3 = PageContent.where(page: 'automotive', content_name: "Bottom Text 3").first
  end

  def automotive_hurricane
    @bottom_text1 = PageContent.where(page: 'automotive', content_name: "Bottom Text 1").first
    @bottom_text2 = PageContent.where(page: 'automotive', content_name: "Bottom Text 2").first
    @bottom_text3 = PageContent.where(page: 'automotive', content_name: "Bottom Text 3").first
  end

  def automotive_kanab
    @bottom_text1 = PageContent.where(page: 'automotive', content_name: "Bottom Text 1").first
    @bottom_text2 = PageContent.where(page: 'automotive', content_name: "Bottom Text 2").first
    @bottom_text3 = PageContent.where(page: 'automotive', content_name: "Bottom Text 3").first
  end
end

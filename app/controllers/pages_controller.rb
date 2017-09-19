# https://github.com/kpumuk/meta-tags
# Recommended keywords tag length: up to 255 characters, 20 words
# Recommended description tag length: up to 160 characters.
# Recommended title tag length: up to 70 characters, 10 words.
class PagesController < ApplicationController
  def home
    @page_title       = 'Locked Out? 24/7 Fast Reliable Locksmith Serving Southern Utah'
    @page_keywords    = 'locked out, locksmith, fast, cheap, reliable, 24/7, St. George, Hurricane, Springdale, La Verkin, Zion, Kanab, Fredionia'
    @page_description = 'Locked out of your house or car? Need a re-key? We are a fast, family owned and afforable Locksmithing company serving St. George & Washington County'
  end

  def residential
    @page_title       = '24/7 Fast Residential Locksmith Serving Southern Utah'
    @page_keywords    = 'rekey, change locks, fast, cheap, reliable, 24/7, St. George, Hurricane, Springdale'
    @page_description = 'We are a fast, afforable Locksmithing company serving St. George, and Washington County'
  end

  def commercial
    @page_title       = '24/7 Fast Residential Locksmith Serving Southern Utah'
    @page_keywords    = 'rekey, business locksmith, commercial, change locks, fast, cheap, reliable, 24/7, St. George, Hurricane, Springdale'
    @page_description = 'We are a fast, afforable Locksmithing company serving St. George, and Washington County'
  end

  def contact
  end

  def contact_form
    ContactFormMailer.contact_form(params).deliver
    flash[:notice] = "Your message has been sent successfully"
    render "contact"
  end

  def blog
    @blog_posts = BlogPost.all.order(created_at: "desc")
  end

  def automotive
    @page_title       = 'Locked Out? 24/7 Fast Locksmith Serving Southern Utah'
    @page_keywords    = 'locked out, fast, cheap, rekey, 24/7, St. George, Hurricane, Springdale'
    @page_description = 'Locked out of your house or car? Need a re-key? We are a fast, afforable Locksmithing company serving St. George, and Washington County'

    @main_text = PageContent.where(page: 'automotive', content_name: 'main_text').first
  end

  def automotive_st_george
    @page_title       = 'Locked Out? 24/7 Fast Locksmith Serving St. George, Santa Clara & more'
    @page_keywords    = 'locked out, locksmith, fast, cheap, rekey, 24/7, St. George, Hurricane, Springdale'
    @page_description = 'Locked out of your house or car? Need a New Car Remote? We are a fast, afforable Locksmithing company serving St. George & Surrounding Areas'

    @bottom_text1 = PageContent.where(page: 'automotive', content_name: "Bottom Text 1").first
    @bottom_text2 = PageContent.where(page: 'automotive', content_name: "Bottom Text 2").first
    @bottom_text3 = PageContent.where(page: 'automotive', content_name: "Bottom Text 3").first
  end

  def automotive_springdale
    @page_title       = 'Locked Out? 24/7 Locksmith Serving Virgin, Springdale, Zion & more'
    @page_keywords    = 'locked out, locksmith, fast, cheap, rekey, 24/7, St. George, Hurricane, Springdale'
    @page_description = 'Locked out of your house or car? Need a New Car Remote?? We are a fast, afforable Locksmithing company serving Sprindale & Surrounding Areas'

    @bottom_text1 = PageContent.where(page: 'automotive', content_name: "Bottom Text 1").first
    @bottom_text2 = PageContent.where(page: 'automotive', content_name: "Bottom Text 2").first
    @bottom_text3 = PageContent.where(page: 'automotive', content_name: "Bottom Text 3").first
  end

  def automotive_hurricane
    @page_title       = 'Locked Out? 24/7 Locksmith Serving Hurricane, Laverkin, Leeds & more'
    @page_keywords    = 'locked out, locksmith, automotive, 24/7, St. George, rekey, hurricane, laverkin, toquerville'
    @page_description = 'Locked out of your house or car? Need a new Car Remote? We are a fast, afforable Locksmithing company serving Hurricane & Surrounding Areas'

    @bottom_text1 = PageContent.where(page: 'automotive', content_name: "Bottom Text 1").first
    @bottom_text2 = PageContent.where(page: 'automotive', content_name: "Bottom Text 2").first
    @bottom_text3 = PageContent.where(page: 'automotive', content_name: "Bottom Text 3").first
  end

  def automotive_kanab
    @page_title       = 'Locked Out? 24/7 Locksmith Serving Kanab, Fredonia, Rockville & more'
    @page_keywords    = 'locked out, locksmith, fast, cheap, automotive, 24/7, St. George, rekey, kanab, fredonia'
    @page_description = 'Locked out of your house or car? Need a New Car Remote? We are a fast, afforable Locksmithing company serving St. George, and Washington County'

    @bottom_text1 = PageContent.where(page: 'automotive', content_name: "Bottom Text 1").first
    @bottom_text2 = PageContent.where(page: 'automotive', content_name: "Bottom Text 2").first
    @bottom_text3 = PageContent.where(page: 'automotive', content_name: "Bottom Text 3").first
  end
end

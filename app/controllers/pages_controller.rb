# https://github.com/kpumuk/meta-tags
# Recommended keywords tag length: up to 255 characters, 20 words
# Recommended description tag length: up to 160 characters.
# Recommended title tag length: up to 70 characters, 10 words.
class PagesController < ApplicationController
  def home
    @page_title       = 'Jensen Locksmithing 24 hour Locksmith'
    @page_keywords    = 'St. George, Hurricane, Springdale, La Verkin, Zion'
    @page_description = 'Locked out - affordable 24 hour emergency locksmith'
  end

  def residential
    @page_title       = 'Jensen Locksmithing Resedential Locksmith'
    @page_keywords    = 'rekey, change locks, fast, cheap, reliable'
    @page_description = 'Rekeying and servicing Homes in St George Southern Utah'
  end

  def commercial
    @page_title       = 'Jensen Locksmithing Commercial Locksmith'
    @page_keywords    = 'rekey, business locksmith, commercial, reliable, affordable'
    @page_description = 'We service all commerical companies in Southern Utah'
  end

  def contact
    @page_title       = 'Jensen Locksmithing - Contact us'
    @page_keywords    = 'address, phone number, reviews'
    @page_description = 'Contact us'
  end

  def contact_form
    @page_title       = 'Jensen Locksmithing - Contact us'
    @page_keywords    = 'address, phone number, reviews'
    @page_description = 'Contact us'
    ContactFormMailer.contact_form(params).deliver
    flash[:notice] = "Your message has been sent successfully"
    render "contact"
  end

  def blog
    @page_title       = 'Jensen Locksmithing - Blog Posts'
    @page_keywords    = 'address, phone number, reviews, blog'
    @page_description = 'Blog Posts'
    @blog_posts = BlogPost.all.order(created_at: :desc)
  end

  def automotive
    @page_title       = 'Jensen Locksmithing - Car lockouts, emergency service'
    @page_keywords    = 'locked out, fast, cheap, 24 hour, local, cheap'
    @page_description = 'Locked out of your vehicle? Jensen Locksmithing helps'

    @main_text = PageContent.where(page: 'automotive', content_name: 'main_text').first
  end

  def automotive_st_george
    @page_title       = 'Jensen Locksmithing - Car lockouts rekeys, St. George'
    @page_keywords    = 'St. George Utah rekeys, key fovs, affordable'
    @page_description = 'Locked out or need a rekey, we are fast and reliable'

    @bottom_text1 = PageContent.where(page: 'automotive', content_name: "Bottom Text 1").first
    @bottom_text2 = PageContent.where(page: 'automotive', content_name: "Bottom Text 2").first
    @bottom_text3 = PageContent.where(page: 'automotive', content_name: "Bottom Text 3").first
  end

  def automotive_springdale
    @page_title       = 'Jensen Locksmithing - Car lockouts rekeys 24 hour'
    @page_keywords    = 'locked out, emergency, locksmith, Zion, Springdale'
    @page_description = 'Locked out of your car We service Zion and Springdale'

    @bottom_text1 = PageContent.where(page: 'automotive', content_name: "Bottom Text 1").first
    @bottom_text2 = PageContent.where(page: 'automotive', content_name: "Bottom Text 2").first
    @bottom_text3 = PageContent.where(page: 'automotive', content_name: "Bottom Text 3").first
  end

  def automotive_hurricane
    @page_title       = 'Jensen Locksmithing - Car lockouts rekeys 24 hour Hurricane'
    @page_keywords    = 'locked out, locksmith, automotive, hurricane utah'
    @page_description = 'Locked out of your car We service Hurricane to Leeds'

    @bottom_text1 = PageContent.where(page: 'automotive', content_name: "Bottom Text 1").first
    @bottom_text2 = PageContent.where(page: 'automotive', content_name: "Bottom Text 2").first
    @bottom_text3 = PageContent.where(page: 'automotive', content_name: "Bottom Text 3").first
  end

  def automotive_kanab
    @page_title       = 'Jensen Locksmithing - Car lockouts rekeys 24 hour Kanab'
    @page_keywords    = 'locked out, locksmith, automotive, Fredonia AZ'
    @page_description = 'Extra cost emergency service to rescue you'

    @bottom_text1 = PageContent.where(page: 'automotive', content_name: "Bottom Text 1").first
    @bottom_text2 = PageContent.where(page: 'automotive', content_name: "Bottom Text 2").first
    @bottom_text3 = PageContent.where(page: 'automotive', content_name: "Bottom Text 3").first
  end
end

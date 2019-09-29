# == Schema Information
#
# Table name: website_images
#
#  id            :integer          not null, primary key
#  name          :string
#  alt_text      :string
#  description   :text
#  default       :boolean
#  page_id       :integer
#  image_html_id :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class WebsiteImage < ApplicationRecord
end

# == Schema Information
#
# Table name: page_images
#
#  id          :integer          not null, primary key
#  page        :string
#  name        :string
#  alt_text    :string
#  image_url   :string
#  description :text
#  default     :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PageImage < ApplicationRecord
end

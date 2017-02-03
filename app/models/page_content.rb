# == Schema Information
#
# Table name: page_contents
#
#  id           :integer          not null, primary key
#  page         :string
#  content_name :string
#  body         :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class PageContent < ApplicationRecord
end

# == Schema Information
#
# Table name: blog_posts
#
#  id         :integer          not null, primary key
#  header     :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BlogPost < ApplicationRecord
end

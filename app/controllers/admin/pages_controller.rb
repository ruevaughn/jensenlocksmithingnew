class Admin::PagesController < ApplicationController

  def automotive
    @page_contents = PageContent.where(page: 'automotive') 
  end

end

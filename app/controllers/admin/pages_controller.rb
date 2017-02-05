class Admin::PagesController < AdminPanelController

  def automotive
    @page_contents = PageContent.where(page: 'automotive')
  end

end

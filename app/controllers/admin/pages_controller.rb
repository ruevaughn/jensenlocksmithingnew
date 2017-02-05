class Admin::PagesController < AdminPanelController

  def automotive
    @page_contents = PageContent.where(page: 'automotive').order(created_at: 'asc')
  end

end

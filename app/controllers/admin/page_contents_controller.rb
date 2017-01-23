class Admin::PageContentsController < ApplicationController

  def edit
    @page_content = PageContent.find(params[:id])
  end

  def update
  end


end

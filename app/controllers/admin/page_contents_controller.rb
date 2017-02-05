class Admin::PageContentsController < AdminPanelController

  def edit
    @page_content = PageContent.find(params[:id])
  end

  def update
    @page_content = PageContent.find(params[:id])

    if @page_content.update_attributes(page_content_params)
      flash[:notice] = "#{@page_content.page} - #{@page_content.content_name} updated Successfully"
      # TODO: Fix this and decide where to redirect
      # redirect_to "admin_#{@page_content.page}_path"

      redirect_to "/admin/#{@page_content.page}"
    else
      flash[:notice] = "There was a problem, contact Chase :)"
      render @page_content
    end
    # TODO: Update, re-render etc.
  end

  def page_content_params
    params.require(:page_content).permit(:body, :title)
  end



end

class ResolutionsController < ApplicationController
  def index
    @ticket = Ticket.find(params[:ticket_id])
    @resolutions = @ticket.resolutions
  end

  def show
    @ticket = Ticket.find(params[:ticket_id])
    @resolution = @ticket.resolutions.find(params[:id])
  end

  def new
    @ticket = Ticket.find(params[:ticket_id])
    @resolution = @ticket.resolutions.build
  end

  def create
    @ticket = Ticket.find(params[:ticket_id])
    @resolution = @ticket.resolutions.build(params[:resolution])
    if @resolution.save
      redirect_to ticket_resolution_url(@ticket, @resolution)
    else
      render :action => "new"
    end
  end

  def edit
    @ticket = Ticket.find(params[:ticket_id])
    @resolution = @ticket.resolutions.find(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:ticket_id])
    @resolution = resolution.find(params[:id])
    if @resolution.update_attributes(params[:resolution])
      redirect_to ticket_resolution_url(@ticket, @resolution)
    else
      render :action => "edit"
    end
  end

  def destroy
    @ticket = Ticket.find(params[:ticket_id])
    @resolution = resolution.find(params[:id])
    @resolution.destroy

    respond_to do |format|
      format.html { redirect_to ticket_resolutions_path(@ticket) }
      format.xml  { head :ok }
    end
  end

end

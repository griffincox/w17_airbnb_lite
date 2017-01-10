class ListingsController < ApplicationController
  def index
    @listings = Listing.all

    render("listings/index.html.erb")
  end

  def show
    @listing = Listing.find(params[:id])

    render("listings/show.html.erb")
  end

  def new
    @listing = Listing.new

    render("listings/new.html.erb")
  end

  def create
    @listing = Listing.new

    @listing.title = params[:title]
    @listing.room_type = params[:room_type]
    @listing.user_id = params[:user_id]
    @listing.description = params[:description]
    @listing.bedroom_count = params[:bedroom_count]
    @listing.bathroom_count = params[:bathroom_count]
    @listing.bed_count = params[:bed_count]
    @listing.max_occupancy = params[:max_occupancy]
    @listing.city = params[:city]
    @listing.neighborhood = params[:neighborhood]
    @listing.check_in_time = params[:check_in_time]
    @listing.nightly_price = params[:nightly_price]
    @listing.address = params[:address]

    save_status = @listing.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/listings/new", "/create_listing"
        redirect_to("/listings")
      else
        redirect_back(:fallback_location => "/", :notice => "Listing created successfully.")
      end
    else
      render("listings/new.html.erb")
    end
  end

  def edit
    @listing = Listing.find(params[:id])

    render("listings/edit.html.erb")
  end

  def update
    @listing = Listing.find(params[:id])

    @listing.title = params[:title]
    @listing.room_type = params[:room_type]
    @listing.user_id = params[:user_id]
    @listing.description = params[:description]
    @listing.bedroom_count = params[:bedroom_count]
    @listing.bathroom_count = params[:bathroom_count]
    @listing.bed_count = params[:bed_count]
    @listing.max_occupancy = params[:max_occupancy]
    @listing.city = params[:city]
    @listing.neighborhood = params[:neighborhood]
    @listing.check_in_time = params[:check_in_time]
    @listing.nightly_price = params[:nightly_price]
    @listing.address = params[:address]

    save_status = @listing.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/listings/#{@listing.id}/edit", "/update_listing"
        redirect_to("/listings/#{@listing.id}", :notice => "Listing updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Listing updated successfully.")
      end
    else
      render("listings/edit.html.erb")
    end
  end

  def destroy
    @listing = Listing.find(params[:id])

    @listing.destroy

    if URI(request.referer).path == "/listings/#{@listing.id}"
      redirect_to("/", :notice => "Listing deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Listing deleted.")
    end
  end
end

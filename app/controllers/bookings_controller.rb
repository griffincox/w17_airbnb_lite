class BookingsController < ApplicationController
  def index
    @q = Booking.ransack(params[:q])
    @bookings = @q.result(:distinct => true).includes(:listing, :userreviews, :requests).page(params[:page]).per(10)

    render("bookings/index.html.erb")
  end

  def show
    @request = Request.new
    @userreview = Userreview.new
    @booking = Booking.find(params[:id])

    render("bookings/show.html.erb")
  end

  def new
    @booking = Booking.new

    render("bookings/new.html.erb")
  end

  def create
    @booking = Booking.new

    @booking.price = params[:price]
    @booking.date = params[:date]
    @booking.listing_id = params[:listing_id]
    @booking.booked = params[:booked]

    save_status = @booking.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bookings/new", "/create_booking"
        redirect_to("/bookings")
      else
        redirect_back(:fallback_location => "/", :notice => "Booking created successfully.")
      end
    else
      render("bookings/new.html.erb")
    end
  end

  def edit
    @booking = Booking.find(params[:id])

    render("bookings/edit.html.erb")
  end

  def update
    @booking = Booking.find(params[:id])

    @booking.price = params[:price]
    @booking.date = params[:date]
    @booking.listing_id = params[:listing_id]
    @booking.booked = params[:booked]

    save_status = @booking.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bookings/#{@booking.id}/edit", "/update_booking"
        redirect_to("/bookings/#{@booking.id}", :notice => "Booking updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Booking updated successfully.")
      end
    else
      render("bookings/edit.html.erb")
    end
  end

  def destroy
    @booking = Booking.find(params[:id])

    @booking.destroy

    if URI(request.referer).path == "/bookings/#{@booking.id}"
      redirect_to("/", :notice => "Booking deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Booking deleted.")
    end
  end
end

class UserreviewsController < ApplicationController
  def index
    @userreviews = Userreview.page(params[:page]).per(10)

    render("userreviews/index.html.erb")
  end

  def show
    @userreview = Userreview.find(params[:id])

    render("userreviews/show.html.erb")
  end

  def new
    @userreview = Userreview.new

    render("userreviews/new.html.erb")
  end

  def create
    @userreview = Userreview.new

    @userreview.reviewer_id = params[:reviewer_id]
    @userreview.reviewed_id = params[:reviewed_id]
    @userreview.title = params[:title]
    @userreview.content = params[:content]
    @userreview.rating = params[:rating]
    @userreview.booking_id = params[:booking_id]

    save_status = @userreview.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/userreviews/new", "/create_userreview"
        redirect_to("/userreviews")
      else
        redirect_back(:fallback_location => "/", :notice => "Userreview created successfully.")
      end
    else
      render("userreviews/new.html.erb")
    end
  end

  def edit
    @userreview = Userreview.find(params[:id])

    render("userreviews/edit.html.erb")
  end

  def update
    @userreview = Userreview.find(params[:id])

    @userreview.reviewer_id = params[:reviewer_id]
    @userreview.reviewed_id = params[:reviewed_id]
    @userreview.title = params[:title]
    @userreview.content = params[:content]
    @userreview.rating = params[:rating]
    @userreview.booking_id = params[:booking_id]

    save_status = @userreview.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/userreviews/#{@userreview.id}/edit", "/update_userreview"
        redirect_to("/userreviews/#{@userreview.id}", :notice => "Userreview updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Userreview updated successfully.")
      end
    else
      render("userreviews/edit.html.erb")
    end
  end

  def destroy
    @userreview = Userreview.find(params[:id])

    @userreview.destroy

    if URI(request.referer).path == "/userreviews/#{@userreview.id}"
      redirect_to("/", :notice => "Userreview deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Userreview deleted.")
    end
  end
end

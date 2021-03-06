class UserphotosController < ApplicationController
  def index
    @q = Userphoto.ransack(params[:q])
    @userphotos = @q.result(:distinct => true).includes(:listing).page(params[:page]).per(10)

    render("userphotos/index.html.erb")
  end

  def show
    @userphoto = Userphoto.find(params[:id])

    render("userphotos/show.html.erb")
  end

  def new
    @userphoto = Userphoto.new

    render("userphotos/new.html.erb")
  end

  def create
    @userphoto = Userphoto.new

    @userphoto.listing_id = params[:listing_id]

    save_status = @userphoto.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/userphotos/new", "/create_userphoto"
        redirect_to("/userphotos")
      else
        redirect_back(:fallback_location => "/", :notice => "Userphoto created successfully.")
      end
    else
      render("userphotos/new.html.erb")
    end
  end

  def edit
    @userphoto = Userphoto.find(params[:id])

    render("userphotos/edit.html.erb")
  end

  def update
    @userphoto = Userphoto.find(params[:id])

    @userphoto.listing_id = params[:listing_id]

    save_status = @userphoto.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/userphotos/#{@userphoto.id}/edit", "/update_userphoto"
        redirect_to("/userphotos/#{@userphoto.id}", :notice => "Userphoto updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Userphoto updated successfully.")
      end
    else
      render("userphotos/edit.html.erb")
    end
  end

  def destroy
    @userphoto = Userphoto.find(params[:id])

    @userphoto.destroy

    if URI(request.referer).path == "/userphotos/#{@userphoto.id}"
      redirect_to("/", :notice => "Userphoto deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Userphoto deleted.")
    end
  end
end

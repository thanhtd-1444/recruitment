class Admins::SliderImagesController < Admins::BaseController
  before_action :load_slider_image, except: %i(index new create)

  def index
    @slider_images = Image.newest.page(params[:page]).per Settings.slider_images.per_page
  end

  def new
    @slider_image = Image.new
  end

  def create
    @slider_image = Image.new slider_image_params

    if @slider_image.save
      flash[:success] = t ".success"
      redirect_to admins_slider_images_path
    else
      flash[:danger] = t ".failure"
      render :new
    end
  end

  def edit
  end

  def update
    if @slider_image.update slider_image_params
      flash[:success] = t ".success"
      redirect_to admins_slider_images_path
    else
      flash[:danger] = t ".failure"
      render :edit
    end
  end

  def destroy
    if @slider_image.destroy
      flash[:success] = t ".success"
    else
      flash[:danger] = t ".failure"
    end

    redirect_to admins_slider_images_path
  end

  def publish
    if @slider_image.update publish_status: params[:publish_status]
      flash[:success] = t(".success", action: params[:publish_status].camelize)
    else
      flash[:danger] = t(".failure", action: params[:publish_status].camelize)
    end

    redirect_to admins_slider_images_path
  end

  private

  def slider_image_params
    params.require(:slider_image).permit(:url, :publish_status)
  end

  def load_slider_image
    @slider_image = Image.find_by id: params[:id]

    flash[:danger] = t("record.not_found", object_name: Image.name) unless @slider_image
  end
end

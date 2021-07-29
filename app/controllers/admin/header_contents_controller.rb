class Admin::HeaderContentsController < ApplicationController

  def index
    @header_content = HeaderContent.new
  end

  def show
  end

  def create
    @header_content = HeaderContent.new(header_params)
    if @header_content.save
      flash[:notice] = 'ヘッダーを作成しました'
      redirect_to admin_header_contents_path
    else
      flash[:alert] = 'エラー'
      render :index
    end
  end

  def update
  end

  def destroy
  end

  private

  def header_params
    params.require(:header_content).permit(:site_title, :image, :responsive_image, :redirect_url)
  end
end

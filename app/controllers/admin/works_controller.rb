class Admin::WorksController < AdminController
  before_action :set_category
  before_action :set_work, only: [:show, :edit, :update, :destroy]

  # GET /works
  # GET /works.json
  def index
    @works = @category.works.all
  end

  # GET /works/1
  # GET /works/1.json
  def show
    @pictures = @work.pictures.all
  end

  # GET /works/new
  def new
    @work = @category.works.new
    @pictures = @work.pictures.build

  end

  # GET /works/1/edit
  def edit
  end

  # POST /works
  # POST /works.json
  def create
    @work = @category.works.new(work_params)

    respond_to do |format|
      if @work.save
        unless params[:pictures].blank?
          params[:pictures]['avatar'].each do |a|
            @picture = @work.pictures.create!(:avatar => a)
          end
        end
        format.html { redirect_to [:admin, @category, @work], notice: 'Work was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /works/1
  # PATCH/PUT /works/1.json
  def update
    respond_to do |format|
      if @work.update(work_params)
        unless params[:pictures].blank?
          params[:pictures]['avatar'].each do |a|
            @picture = @work.pictures.create!(:avatar => a)
          end
        end
        format.html { redirect_to [:admin, @category, @work], notice: 'Work was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /works/1
  # DELETE /works/1.json
  def destroy
    @work.destroy
    respond_to do |format|
      format.html { redirect_to admin_category_works_url, notice: 'Work was successfully destroyed.' }
    end
  end

  private
    def set_category
      @category = Category.find(params[:category_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_work
      @work = Work.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_params
      params.require(:work).permit(:category_id, :title, :worked_at, :content, pictures_attributes: [:id, :work_id, :avatar])
    end
end

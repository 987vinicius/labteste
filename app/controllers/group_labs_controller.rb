class GroupLabsController < ApplicationController
  before_action :set_group_lab, only: %i[ show edit update destroy ]

  # GET /group_labs or /group_labs.json
  def index
    @group_labs = GroupLab.all
  end

  # GET /group_labs/1 or /group_labs/1.json
  def show
  end

  # GET /group_labs/new
  def new
    @group_lab = GroupLab.new
  end

  # GET /group_labs/1/edit
  def edit
  end

  # POST /group_labs or /group_labs.json
  def create
    @group_lab = GroupLab.new(group_lab_params)

    respond_to do |format|
      if @group_lab.save
        format.html { redirect_to @group_lab, notice: "Group lab was successfully created." }
        format.json { render :show, status: :created, location: @group_lab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @group_lab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_labs/1 or /group_labs/1.json
  def update
    respond_to do |format|
      if @group_lab.update(group_lab_params)
        format.html { redirect_to @group_lab, notice: "Group lab was successfully updated." }
        format.json { render :show, status: :ok, location: @group_lab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @group_lab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_labs/1 or /group_labs/1.json
  def destroy
    @group_lab.destroy
    respond_to do |format|
      format.html { redirect_to group_labs_url, notice: "Group lab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_lab
      @group_lab = GroupLab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def group_lab_params
      params.require(:group_lab).permit(:id,
                                laboratorio_items_attributes: [:id, :group_lab_id, :_destroy,
                                exames_attributes: [:id, :laboratorio_id, :laboratorio_item_id, :nome, :tipo_exame, :_destroy]])
    end
end

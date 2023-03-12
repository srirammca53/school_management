class InstitutesController < ApplicationController
  before_action :set_institute, only: %i[ show edit update destroy ]
  before_action :is_school_admin?, only: %[ show edit update ]
  before_action :is_admin?, only: %[ index show new edit create update destroy ]

  # GET /institutes or /institutes.json
  def index
    if Current.user.role_id == 1
      @institutes = Institute.all
    elsif Current.user.role_id == 2
      @institutes = Institute.where(user_id: Current.user.id)
    else
      flash[:info] = "As a student you dont have access to this page"
      redirect_to root_path
    end
  end

  # GET /institutes/1 or /institutes/1.json
  def show
  end

  # GET /institutes/new
  def new
    @institute = Institute.new
  end

  # GET /institutes/1/edit
  def edit
  end

  # POST /institutes or /institutes.json
  def create
    if Current.user.id == 1
      @institute = Institute.new(institute_params)

      respond_to do |format|
        if @institute.save
          format.html { redirect_to institute_url(@institute), notice: "Institute was successfully created." }
          format.json { render :show, status: :created, location: @institute }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @institute.errors, status: :unprocessable_entity }
        end
      end
    else
      flash[:info] = "You dont have access to create an Institute"
      redirect_to root_path
    end
  end

  # PATCH/PUT /institutes/1 or /institutes/1.json
  def update
    respond_to do |format|
      if @institute.update(institute_params)
        format.html { redirect_to institute_url(@institute), notice: "Institute was successfully updated." }
        format.json { render :show, status: :ok, location: @institute }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @institute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /institutes/1 or /institutes/1.json
  def destroy
    @institute.destroy

    respond_to do |format|
      format.html { redirect_to institutes_url, notice: "Institute was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institute
      @institute = Institute.find(params[:id])
    end

    def is_admin?
      Current.user.role_id == 1
    end

    def is_school_admin?
      Current.user.role_id == 2
    end

    # Only allow a list of trusted parameters through.
    def institute_params
      params.require(:institute).permit(:id, :name, :address, :phone, :city, :email, :website, :user_id)
    end
end

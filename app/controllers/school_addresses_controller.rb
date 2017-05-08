class SchoolAddressesController < ApplicationController
  before_action :set_school_address, only: [:show, :edit, :update, :destroy]

  # GET /school_addresses/new
  def new
    @school_address = SchoolAddress.new
  end

  # GET /school_addresses/1/edit
  def edit
  end

  # POST /school_addresses
  # POST /school_addresses.json
  def create
    @school_address = SchoolAddress.new(school_address_params)

    respond_to do |format|
      if @school_address.save
        format.html { redirect_to @school_address, notice: 'School address was successfully created.' }
        format.json { render :show, status: :created, location: @school_address }
      else
        format.html { render :new }
        format.json { render json: @school_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_addresses/1
  # PATCH/PUT /school_addresses/1.json
  def update
    respond_to do |format|
      if @school_address.update(school_address_params)
        format.html { redirect_to @school_address, notice: 'School address was successfully updated.' }
        format.json { render :show, status: :ok, location: @school_address }
      else
        format.html { render :edit }
        format.json { render json: @school_address.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_address
      @school_address = SchoolAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_address_params
      params.require(:school_address).permit(:line, :street, :neighborhood, :city, :state, :state_code, :zip_code, :phone_number, :school_id)
    end
end

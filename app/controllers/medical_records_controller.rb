class MedicalRecordsController < ApplicationController
  before_action :set_medical_record, only: [:show, :edit, :update, :destroy]
  before_action :require_logged_in
  # GET /medical_records
  # GET /medical_records.json
  def index
    @medical_record = current_user.medical_record
    if @medical_record.nil?
      @medical_record = MedicalRecord.new(user: current_user)
    end
  end

  # GET /medical_records/1
  # GET /medical_records/1.json
  def show
  end

  # GET /medical_records/new
  def new
    @medical_record = current_user.medical_record.new
  end

  # GET /medical_records/1/edit
  def edit
  end

  # POST /medical_records
  # POST /medical_records.json
  def create
    @medical_record = current_user.medical_record.new(medical_record_params)

    respond_to do |format|
      if @medical_record.save
        format.html { redirect_to @medical_record, notice: 'Medical record was successfully created.' }
        format.json { render :show, status: :created, location: @medical_record }
      else
        format.html { render :new }
        format.json { render json: @medical_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_records/1
  # PATCH/PUT /medical_records/1.json
  def update
    respond_to do |format|
      if @medical_record.update(medical_record_params)
        format.html { redirect_to user_medical_record_path(current_user), notice: 'Medical record was successfully updated.' }
        format.json { render :show, status: :ok, location: @medical_record }
      else
        format.html { render :edit }
        format.json { render json: @medical_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_records/1
  # DELETE /medical_records/1.json
  def destroy
    @medical_record.destroy
    respond_to do |format|
      format.html { redirect_to medical_records_url, notice: 'Medical record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_record
      @medical_record = current_user.medical_record
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medical_record_params
      params.require(:medical_record).permit(:name, :dob, :language, :phone_1, :phone_2, :emer_contact_name, :emer_contact_no, :prim_phys_name, :prim_phys_no, :health_iss_name, :health_iss_no, :health_mem_id, :anemia, :angina, :asthma, :cancer, :cataracts, :colities, :crohns_disease, :diabetes, :emphysema, :epilepsy, :goiter, :heart_murmur, :heart_problems, :hepatitis, :high_blood_pressure, :high_cholesterol, :hiv_aids, :hypothyroidism, :jaundice, :kidney_disease, :kidney_stones, :leukemia, :pneumonia, :psoriasis, :pulmonary_embolism, :rheumatic_fever, :stomach_peptic_ulcer, :stroke, :tuberculosis)
    end
end

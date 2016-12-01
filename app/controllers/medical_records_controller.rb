class MedicalRecordsController < ApplicationController
  before_action :set_medical_record, only: [:show, :edit, :update, :destroy]

  # GET /medical_records
  # GET /medical_records.json
  def index
    @medical_records = MedicalRecord.all
  end

  # GET /medical_records/1
  # GET /medical_records/1.json
  def show
  end

  # GET /medical_records/new
  def new
    @medical_record = MedicalRecord.new
  end

  # GET /medical_records/1/edit
  def edit
  end

  # POST /medical_records
  # POST /medical_records.json
  def create
    @medical_record = MedicalRecord.new(medical_record_params)

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
        format.html { redirect_to @medical_record, notice: 'Medical record was successfully updated.' }
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
      @medical_record = MedicalRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medical_record_params
      params.require(:medical_record).permit(:anemia, :angina, :asthma, :cancer, :cataracts, :colities, :crohns_disease, :diabetes, :emphysema, :epilepsy, :goiter, :heart_murmur, :heart_problems, :hepatitis, :high_blood_pressure, :high_cholesterol, :hiv_aids, :hypothyroidism, :jaundice, :kidney_disease, :kidney_stones, :leukemia, :pneumonia, :psoriasis, :pulmonary_embolism, :rheumatic_fever, :stomach_peptic_ulcer, :stroke, :tuberculosis)
    end
end

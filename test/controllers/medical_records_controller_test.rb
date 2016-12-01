require 'test_helper'

class MedicalRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medical_record = medical_records(:one)
  end

  test "should get index" do
    get medical_records_url
    assert_response :success
  end

  test "should get new" do
    get new_medical_record_url
    assert_response :success
  end

  test "should create medical_record" do
    assert_difference('MedicalRecord.count') do
      post medical_records_url, params: { medical_record: { anemia: @medical_record.anemia, angina: @medical_record.angina, asthma: @medical_record.asthma, cancer: @medical_record.cancer, cataracts: @medical_record.cataracts, colities: @medical_record.colities, crohns_disease: @medical_record.crohns_disease, diabetes: @medical_record.diabetes, emphysema: @medical_record.emphysema, epilepsy: @medical_record.epilepsy, goiter: @medical_record.goiter, heart_murmur: @medical_record.heart_murmur, heart_problems: @medical_record.heart_problems, hepatitis: @medical_record.hepatitis, high_blood_pressure: @medical_record.high_blood_pressure, high_cholesterol: @medical_record.high_cholesterol, hiv_aids: @medical_record.hiv_aids, hypothyroidism: @medical_record.hypothyroidism, jaundice: @medical_record.jaundice, kidney_disease: @medical_record.kidney_disease, kidney_stones: @medical_record.kidney_stones, leukemia: @medical_record.leukemia, pneumonia: @medical_record.pneumonia, psoriasis: @medical_record.psoriasis, pulmonary_embolism: @medical_record.pulmonary_embolism, rheumatic_fever: @medical_record.rheumatic_fever, stomach_peptic_ulcer: @medical_record.stomach_peptic_ulcer, stroke: @medical_record.stroke, tuberculosis: @medical_record.tuberculosis } }
    end

    assert_redirected_to medical_record_url(MedicalRecord.last)
  end

  test "should show medical_record" do
    get medical_record_url(@medical_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_medical_record_url(@medical_record)
    assert_response :success
  end

  test "should update medical_record" do
    patch medical_record_url(@medical_record), params: { medical_record: { anemia: @medical_record.anemia, angina: @medical_record.angina, asthma: @medical_record.asthma, cancer: @medical_record.cancer, cataracts: @medical_record.cataracts, colities: @medical_record.colities, crohns_disease: @medical_record.crohns_disease, diabetes: @medical_record.diabetes, emphysema: @medical_record.emphysema, epilepsy: @medical_record.epilepsy, goiter: @medical_record.goiter, heart_murmur: @medical_record.heart_murmur, heart_problems: @medical_record.heart_problems, hepatitis: @medical_record.hepatitis, high_blood_pressure: @medical_record.high_blood_pressure, high_cholesterol: @medical_record.high_cholesterol, hiv_aids: @medical_record.hiv_aids, hypothyroidism: @medical_record.hypothyroidism, jaundice: @medical_record.jaundice, kidney_disease: @medical_record.kidney_disease, kidney_stones: @medical_record.kidney_stones, leukemia: @medical_record.leukemia, pneumonia: @medical_record.pneumonia, psoriasis: @medical_record.psoriasis, pulmonary_embolism: @medical_record.pulmonary_embolism, rheumatic_fever: @medical_record.rheumatic_fever, stomach_peptic_ulcer: @medical_record.stomach_peptic_ulcer, stroke: @medical_record.stroke, tuberculosis: @medical_record.tuberculosis } }
    assert_redirected_to medical_record_url(@medical_record)
  end

  test "should destroy medical_record" do
    assert_difference('MedicalRecord.count', -1) do
      delete medical_record_url(@medical_record)
    end

    assert_redirected_to medical_records_url
  end
end

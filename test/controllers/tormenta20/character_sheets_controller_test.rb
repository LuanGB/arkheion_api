require "test_helper"

class Tormenta20::CharacterSheetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tormenta20_character_sheet = tormenta20_character_sheets(:one)
  end

  test "should get index" do
    get tormenta20_character_sheets_url, as: :json
    assert_response :success
  end

  test "should create tormenta20_character_sheet" do
    assert_difference("Tormenta20::CharacterSheet.count") do
      post tormenta20_character_sheets_url, params: { tormenta20_character_sheet: { data: @tormenta20_character_sheet.data, description: @tormenta20_character_sheet.description, name: @tormenta20_character_sheet.name, temp: @tormenta20_character_sheet.temp } }, as: :json
    end

    assert_response :created
  end

  test "should show tormenta20_character_sheet" do
    get tormenta20_character_sheet_url(@tormenta20_character_sheet), as: :json
    assert_response :success
  end

  test "should update tormenta20_character_sheet" do
    patch tormenta20_character_sheet_url(@tormenta20_character_sheet), params: { tormenta20_character_sheet: { data: @tormenta20_character_sheet.data, description: @tormenta20_character_sheet.description, name: @tormenta20_character_sheet.name, temp: @tormenta20_character_sheet.temp } }, as: :json
    assert_response :success
  end

  test "should destroy tormenta20_character_sheet" do
    assert_difference("Tormenta20::CharacterSheet.count", -1) do
      delete tormenta20_character_sheet_url(@tormenta20_character_sheet), as: :json
    end

    assert_response :no_content
  end
end

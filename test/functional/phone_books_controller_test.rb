require 'test_helper'

class PhoneBooksControllerTest < ActionController::TestCase
  setup do
    @phone_book = phone_books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:phone_books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create phone_book" do
    assert_difference('PhoneBook.count') do
      post :create, phone_book: { Address: @phone_book.Address, Email: @phone_book.Email, Name: @phone_book.Name, Number: @phone_book.Number, Photo: @phone_book.Photo }
    end

    assert_redirected_to phone_book_path(assigns(:phone_book))
  end

  test "should show phone_book" do
    get :show, id: @phone_book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @phone_book
    assert_response :success
  end

  test "should update phone_book" do
    put :update, id: @phone_book, phone_book: { Address: @phone_book.Address, Email: @phone_book.Email, Name: @phone_book.Name, Number: @phone_book.Number, Photo: @phone_book.Photo }
    assert_redirected_to phone_book_path(assigns(:phone_book))
  end

  test "should destroy phone_book" do
    assert_difference('PhoneBook.count', -1) do
      delete :destroy, id: @phone_book
    end

    assert_redirected_to phone_books_path
  end
end

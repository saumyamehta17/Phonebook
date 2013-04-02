class PhoneBooksController < ApplicationController
  # GET /phone_books
  # GET /phone_books.json
  def index
    @phone_books = PhoneBook.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @phone_books }
    end
  end

  # GET /phone_books/1
  # GET /phone_books/1.json
  def show
    @phone_book = PhoneBook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @phone_book }
    end
  end

  # GET /phone_books/new
  # GET /phone_books/new.json
  def new
    @phone_book = PhoneBook.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @phone_book }
    end
  end

  # GET /phone_books/1/edit
  def edit
    @phone_book = PhoneBook.find(params[:id])
  end

  # POST /phone_books
  # POST /phone_books.json
  def create
    @phone_book = PhoneBook.new(params[:phone_book])

    respond_to do |format|
      if @phone_book.save
        format.html { redirect_to @phone_book, notice: 'Phone book was successfully created.' }
        format.json { render json: @phone_book, status: :created, location: @phone_book }
      else
        format.html { render action: "new" }
        format.json { render json: @phone_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /phone_books/1
  # PUT /phone_books/1.json
  def update
    @phone_book = PhoneBook.find(params[:id])

    respond_to do |format|
      if @phone_book.update_attributes(params[:phone_book])
        format.html { redirect_to @phone_book, notice: 'Phone book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @phone_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_books/1
  # DELETE /phone_books/1.json
  def destroy
    @phone_book = PhoneBook.find(params[:id])
    @phone_book.destroy

    respond_to do |format|
      format.html { redirect_to phone_books_url }
      format.json { head :no_content }
    end
  end
end

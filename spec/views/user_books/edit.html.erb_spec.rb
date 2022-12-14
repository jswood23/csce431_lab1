require 'rails_helper'

RSpec.describe "user_books/edit", type: :view do
  before(:each) do
    @user_book = assign(:user_book, UserBook.create!(
      user_id: 1,
      book_id: 1
    ))
  end

  it "renders the edit user_book form" do
    render

    assert_select "form[action=?][method=?]", user_book_path(@user_book), "post" do

      assert_select "select[name=?]", "user_book[user_id]"

      assert_select "select[name=?]", "user_book[book_id]"
    end
  end
end

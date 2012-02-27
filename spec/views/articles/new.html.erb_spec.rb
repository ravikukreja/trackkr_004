require 'spec_helper'


describe "articles/new" do
  before(:each) do
    assign(:article, stub_model(Article,

      :username => "MyString",

      :email => "MyString",

      :contact_number => 1,

      :reminder_option => "MyString"

    ).as_new_record)
  end

  it "renders new article form" do
    render


    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => articles_path, :method => "post" do

      assert_select "input#article_username", :name => "article[username]"

      assert_select "input#article_email", :name => "article[email]"

      assert_select "input#article_contact_number", :name => "article[contact_number]"

      assert_select "input#article_reminder_option", :name => "article[reminder_option]"

    end

  end
end

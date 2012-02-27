require 'spec_helper'


describe "articles/edit" do
  before(:each) do
    @article = assign(:article, stub_model(Article,

      :username => "MyString",

      :email => "MyString",

      :contact_number => 1,

      :reminder_option => "MyString"

    ))

  end

  it "renders the edit article form" do
    render


    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => articles_path(@article), :method => "post" do

      assert_select "input#article_username", :name => "article[username]"

      assert_select "input#article_email", :name => "article[email]"

      assert_select "input#article_contact_number", :name => "article[contact_number]"

      assert_select "input#article_reminder_option", :name => "article[reminder_option]"

    end

  end
end

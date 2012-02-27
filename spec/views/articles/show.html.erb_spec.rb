require 'spec_helper'


describe "articles/show" do
  before(:each) do
    @article = assign(:article, stub_model(Article,

      :username => "Username",

      :email => "Email",

      :contact_number => 1,

      :reminder_option => "Reminder Option"


    ))

  end

  it "renders attributes in <p>" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers



    rendered.should match(/Username/)



    rendered.should match(/Email/)



    rendered.should match(/1/)



    rendered.should match(/Reminder Option/)


  end
end

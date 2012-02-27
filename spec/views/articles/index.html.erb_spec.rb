require 'spec_helper'


describe "articles/index" do
  before(:each) do
    assign(:articles, [

      stub_model(Article,

        :username => "Username",

        :email => "Email",

        :contact_number => 1,

        :reminder_option => "Reminder Option"


      ),


      stub_model(Article,

        :username => "Username",

        :email => "Email",

        :contact_number => 1,

        :reminder_option => "Reminder Option"


      )


    ])
  end

  it "renders a list of articles" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers



    assert_select "tr>td", :text => "Username".to_s, :count => 2



    assert_select "tr>td", :text => "Email".to_s, :count => 2



    assert_select "tr>td", :text => 1.to_s, :count => 2



    assert_select "tr>td", :text => "Reminder Option".to_s, :count => 2


  end
end

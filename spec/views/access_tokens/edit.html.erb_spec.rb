require 'spec_helper'

describe "access_tokens/edit.html.erb" do
  before(:each) do
    @access_token = assign(:access_token, stub_model(AccessToken,
      :user_id => 1,
      :token => "MyString",
      :active => false
    ))
  end

  it "renders the edit access_token form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => access_tokens_path(@access_token), :method => "post" do
      assert_select "input#access_token_user_id", :name => "access_token[user_id]"
      assert_select "input#access_token_token", :name => "access_token[token]"
      assert_select "input#access_token_active", :name => "access_token[active]"
    end
  end
end

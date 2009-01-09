require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/campaigns/edit.html.erb" do
  include CampaignsHelper
  
  before(:each) do
    assigns[:campaign] = @campaign = stub_model(Campaign,
      :uuid => "12345678-0123-5678-0123-567890123456",
      :new_record? => false
    )
  end

  it "should render edit form" do
    render "/campaigns/edit.html.erb"
    
    response.should have_tag("form[action=#{campaign_path(@campaign)}][method=post]") do
    end
  end
end


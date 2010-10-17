require 'spec_helper'

describe PAS do
  it "has a default blank value for config[:api_access_key]" do
    PAS.config[:api_access_key].should be_blank
  end
  
  it "has a default blank value for config[:api_token]" do
    PAS.config[:api_token].should be_blank
  end
  
  it "has PAS's SSL domain name as the default value for config[:domain_name]" do
    PAS.config[:domain_name].should == "https://publisher.pokeraffiliatesolutions.com/"
  end
end
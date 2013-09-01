require 'spec_helper'

describe User do
  it "save" do
    user = FactoryGirl.create(:user)
    expect(user.email).to eq("ayumi@sazae.com.au")
  end


  describe 'validate check' do
    context 'given null password' do
      subject { User.new(:email => 'ayumi@sazae.com.au') }
      it { should have(2).errors_on(:password) }
    end
    
    context 'given short password' do
      subject { User.new(:email => 'ayumi@sazae.com.au', :password => '123') }
      it { should have(1).errors_on(:password) }
    end

    context 'given null email' do
      subject { User.new(:password => 'password111') }
      it { should have(3).errors_on(:email) }
    end

  end

end

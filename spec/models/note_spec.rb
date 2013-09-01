require 'spec_helper'

describe Note do
  it ".check saving" do
    note = FactoryGirl.create(:note)
    expect(note.title).to eq("MyTitle")
  end

  describe '.validate check' do
    context 'given null title' do
      subject { Note.new(:content => 'a') }
      it { should have(1).errors_on(:title) }
    end
  end


end


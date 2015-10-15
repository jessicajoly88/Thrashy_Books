require 'rails_helper'

describe "the add a review process" do
  it "adds a new review to a novel" do
    novel = Novel.create(:author => "Danielle Steele", :description => "Hot and Steamy", :title => "Betrayal")
    visit novel_path(novel)
    click_on 'Review'
    fill_in 'Name', :with => 'Jessica'
    fill_in 'Review', :with => 'Bad novel'
    click_on 'Create Review'
    expect(page).to have_content 'Jessica'
  end
end

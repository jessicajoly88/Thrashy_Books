require 'rails_helper'

describe "the add a novel process" do
  it "adds a new novel" do
    visit novels_path
    click_on "Add a novel"
    fill_in 'Author', :with => "Danielle Steele"
    fill_in 'Description', :with => "Hot and Steamy!"
    fill_in 'Title', :with => "Betrayal"
    click_on 'Create Novel'
    expect(page).to have_content "Betrayal"
  end

  it "gives error when no title or description or author is entered" do
    visit new_novel_path
    click_on 'Create Novel'
    expect(page).to have_content 'errors'
  end
end

describe "the edit a novel process" do
  it "edits a novel" do
    novel = Novel.create(:author => "Danielle Steele", :description => "Hot and Steamy", :title => "Betrayal")
    visit novel_path(novel)
    click_on 'Edit'
    fill_in 'Title', :with => 'Hawt'
    click_on 'Update Novel'
    expect(page).to have_content 'Hawt'
  end

  it "gives error when no title or description or author is entered" do
    novel = Novel.create(:author => "Danielle Steele", :description => "Hot and Steamy", :title => "Betrayal")
    visit novel_path(novel)
    click_on 'Edit'
    fill_in 'Title', :with => ''
    click_on 'Update Novel'
    expect(page).to have_content 'errors'
  end
end

describe "the delete a novel process" do
  it "deletes a novel" do
    novel = Novel.create(:author => "Danielle Steele", :description => "Hot and Steamy", :title => "Betrayal")
    visit novel_path(novel)
    click_on 'Delete'
    expect(page).to_not have_content 'Betrayal'
  end
end

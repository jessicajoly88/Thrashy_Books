require 'rails_helper'

describe Novel do
  it {should validate_presence_of :author}
  it {should validate_presence_of :title}
  it {should validate_presence_of :description}
  it {should have_many :reviews}
end

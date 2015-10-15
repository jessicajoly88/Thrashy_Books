require 'rails_helper'

describe Review do
  it {should validate_presence_of :user_name}
  it {should validate_presence_of :description}
  it {should belong_to :novel}
end

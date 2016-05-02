require 'rails_helper'

RSpec.describe 'example', js: true do
  it do
    visit '/'
    expect(page).to have_content('Find me')
  end
end

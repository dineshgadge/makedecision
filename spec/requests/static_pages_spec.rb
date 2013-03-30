require 'spec_helper'

describe "StaticPages" do

  subject {page}

  describe "Home Page" do
    before {visit root_path}

    it {should have_selector 'h1', text: 'Make Decision'}
    it {should have_selector 'title', text: 'Make Decision'}
  end

  describe "Help Page" do
    before {visit help_path}

    it {should have_selector 'h1', text: 'Help'}
  end

  describe "About Page" do
    before {visit about_path}

    it {should have_selector 'h1', text: 'About Us'}
  end
end

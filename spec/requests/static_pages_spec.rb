require 'spec_helper'

describe "StaticPages" do

  subject {page}

  shared_examples_for "all static pages" do
    it {should have_selector 'h1', text: heading}
  end

  describe "Home Page" do
    before {visit root_path}
    let(:heading) {'Make Decision'}

    it_should_behave_like "all static pages"
    it {should have_selector 'title', text: 'Make Decision'}
  end

  describe "Help Page" do
    before {visit help_path}
    let(:heading) {'Help'}

    it_should_behave_like "all static pages"
  end

  describe "About Page" do
    before {visit about_path}
    let(:heading) {'About Us'}

    it_should_behave_like "all static pages"
  end
end

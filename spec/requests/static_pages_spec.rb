require 'spec_helper'

describe "StaticPages" do

let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    it "should have h1 as 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => "Sample App")
    end
    it "should have title in standard format" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "#{base_title}")
  	end
  	it "should not have the word home in it" do
      visit '/static_pages/home'
      page.should not have_selector('title', :text => "| Home")
  	end
  end

  describe "Help page" do
    it "should have h1 as 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => "Help")
    end
    it "should have title in standard format" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "#{base_title} | Help")
  	end
  end

  describe "About page" do
    it "should have h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => "About Us")
    end
    it "should have title in standard format" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "#{base_title} | About")
  	end
  end

  describe "Contact page" do
    it "should have h1 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => "Contact Us")
    end
    it "should have title in standard format" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "#{base_title} | Contact")
  	end
  end
end

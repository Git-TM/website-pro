class PagesController < ApplicationController
  def home
    @contact = Contact.new
    @projects = Project.all
    @workexperiences = Workexperience.all
  end
end

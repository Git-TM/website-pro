class PagesController < ApplicationController
  def home
    @contact = Contact.new
    @projects = Project.all
    @workexperiences = Workexperience.all
  end

  def savecv
    # filepath = "CV.pdf"
    # @file = File.read(filepath)
    send_file 'app/assets/data/CV.pdf', type: "application/pdf"
  end
end

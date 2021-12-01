class PagesController < ApplicationController
  def home
    @contact = Contact.new
    @growthprojects = Project.where(projecttype: "Growth / Freelance")
    @personalprojects = Project.where(projecttype: "Personal Project")
    @freelancecodeprojects = Project.where(projecttype: "Freelance code")
  end
end

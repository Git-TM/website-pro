class PagesController < ApplicationController
  def home
    @contact = Contact.new
    @growthprojects = Project.where(category: "Growth / Freelance")
    @personalprojects = Project.where(category: "Projets personnels")
    @freelancecodeprojects = Project.where(category: "Freelance Web Dev")
    @projects = Project.all
  end
end

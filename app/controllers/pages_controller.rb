class PagesController < ApplicationController
  before_filter :redirect_to_https
  def home
    @contact = Contact.new
    @growthprojects = Project.where(category: "Growth / Freelance")
    @personalprojects = Project.where(category: "Projets personnels")
    @freelancecodeprojects = Project.where(category: "Freelance Web Dev")
    @projectall = Project.all
  end
end

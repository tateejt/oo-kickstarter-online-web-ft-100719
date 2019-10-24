class Project
  attr_accessor :title, :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backer << backer
    backer.back_project(self) unless backed_projects.include?(self)
  end
en
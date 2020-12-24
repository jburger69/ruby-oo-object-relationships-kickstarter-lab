class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
       new_backed_projects = ProjectBacker.all.select do |project|
        project.backer == self
       end
       new_backed_projects.map do |proj|
        proj.project
       end
    end
end
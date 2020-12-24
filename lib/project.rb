class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        projects = ProjectBacker.all.select do |proj_back|
            proj_back.project == self
        end
        projects.map do |project|
            project.backer
        end
    end
end
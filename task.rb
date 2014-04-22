class Task
  attr_accessor :title, :description, :status, :created_at

  def initialize(title, description)
    @title = title
    @description = description
    @status = "incomplete"
    @created_at = DateTime.now
  end

end

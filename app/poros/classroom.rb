class Classroom
  attr_reader :name,
              :id

  def initialize(response)
    @name = response[:name]
    @id = response[:id]
  end
end

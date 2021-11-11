class ClassroomFacade

  def self.get_one_classroom(classroom_id)
    classroom_data = ClassroomService.get_one_classroom(classroom_id)
     Classroom.new(classroom_data[:data])
  end

  def self.get_all_classrooms
    classroom_data = ClassroomService.get_all_classrooms
    classroom_data.map do |data|
      Classroom.new(data[:data])
    end
  end
end

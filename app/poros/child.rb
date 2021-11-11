class Child
  attr_reader :first_name,
              :last_name,
              :birthday,
              :classroom_id,
              :parent_id,

  def initialize(response)
    @first_name = response[:first_name]
    @last_name = response[:last_name]
    @birthday = response[:birthday]
    @classroom_id = response[:classroom_id]
    @parent_id = response[:parent_id]
  end
end

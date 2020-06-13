class UsersOperations < CollectionOperations
  private

  def query_student_id
    query[:student_id] = query[:studentId]
  end
end

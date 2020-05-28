class PublicationsOperations < CollectionOperations

  private

  def query_search
    regex = /.*#{query[:search]}.*/i

    query[:'$or'] ||= []
    query[:'$or'] += [
      { title: regex },
      { author: regex }
    ]
  end
end

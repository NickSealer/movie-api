class MoviesService

  def self.search(movies, query)
    movies.where("function_from = '#{query}'")
  end

end

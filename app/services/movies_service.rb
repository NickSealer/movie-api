class MoviesService

  def self.search(movies, query)
    movies.where("created_at = '#{{query}}'")
  end

end

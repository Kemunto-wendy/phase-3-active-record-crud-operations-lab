class Movie < ActiveRecord::Base
  #Create
  def self.create_with_title(title)
    title_movie=Movie.create(title: title)
    # title_movie.save
    end

    #Read
    def self.first_movie
        self.first
    end
    def self.last_movie
        self.last
    end
    def self.movie_count
        self.count
    end
    def self.find_movie_with_id(id)
        self.find(id)
    end
    def self.find_movie_with_attributes(attributes)
        self.find_by(attributes)
    end
    def self.find_movies_after_2002
        self.where("release_date >?", 2002)
    end

    #update
    def update_with_attributes(attributes)
        self.update(attributes)
    end
    def self.update_all_titles(title)
        self.update(title:title)
    end

    #Delete
    def self.delete_by_id(id)
        del= self.find_movie_with_id(id)
        del.destroy
    end
    def self.delete_all_movies
        self.destroy_all
    end
end

package hw3

class Movie {
    String movieTitle;
    String director
    Date yearProduced
    String genera
    String thisMovieIs
   


    static hasMany = [review:Review]


    static constraints = {
        movieTitle(nullable: false)
        director(nullable: false)
        yearProduced(nullable: false)
        genera(nullable: true)
        thisMovieIs(nullable: true)

    }
}

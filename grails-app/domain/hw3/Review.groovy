package hw3

class Review {

    String name
    String reviewTitle
    String reviewText
    Date reviewDate
    BigDecimal rate
    //int numberOfReviews()

    //BigDecimal averageRate

   // static hasMany = [movie: Movie]
    static belongsTo = [Movie]

    static constraints = {
        name(nullable: false)
        reviewTitle(nullable: true)
        reviewText(nullable: false, maxSize: 5000)
        rate (min: 0.0,max: 5.0)
        reviewDate(nullable: true)
        //numberOfReviews()
       // averageRate(min: 0.0,max: 5.0)
    }
}

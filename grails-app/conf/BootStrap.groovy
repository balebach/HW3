import hw3.Movie
import hw3.Review

class BootStrap {

    def init = { servletContext ->
        def kingSpeech = new Movie(movieTitle: "The king's Speech",director: "Tom Hooper",
                yearProduced: (new Date("11/30/2010")),genera: "Drama, Biographies",
                ThisMovieIs: "Emotional, Inspiring, Witty")
        kingSpeech.save()
        
        def goodWill = new Movie(movieTitle: "Good Will Hunting", director: "Gus Van Sant",
                       yearProduced: (new Date("11/30/1997")), genera: "Drama, Romantic",
                        thisMovieIs: "Emotional, Sentimental, Romantic")
        goodWill.save()
        def matrix = new Movie(movieTitle: "The Matrix",director: "Andy Wachowski, Larry Wachowski",
                        yearProduced: (new Date("02/20/1999")),
                        genera: "Action thrillers, Sci-Fi and Fantasy, Martial Arts, Sci-Fi thriller",
                        thisMovieIs: "Exciting, Imaginative, Mind-bending")
        matrix.save()
        def identity = new Movie(movieTitle: "The Bourne Identity",director: "Doug Liman",
                         yearProduced: (new Date("02/02/2002")),
                         genera: "Thrillers,Action Thrillers,Espionage, Drama based on Contemporary Literature",
                         thisMovieIs: "Violent, Exciting, Gritty, Suspenseful")
        identity.save()
        def panda = new Movie(movieTitle: "Kung Fu Panda",director: "Mark Osborne, John Stevenson",
                      yearProduced: (new Date("02/02/2008")),genera: "Children & Family, Family Animation, Animal Tales",
                      thisMovieIs: "Goofy, Witty")
        panda.save()


        kingSpeech.addToReview(new Review(name: "Sami",reviewTitle: "The king's speech",reviewText:"I love this movie.....",
                reviewDate: (new Date("04/02/2011")),rate: 3.8))

        kingSpeech.addToReview(new Review(name: "Bante", reviewTitle: "The king's speech",reviewText: "wonderful movie. Emotional...",
                reviewDate: (new Date("04/03/2011")),rate: 4.5))
        kingSpeech.save()


         matrix.addToReview(new Review(name: "Bante", reviewTitle: "The matrix is so assoum",
                reviewText: "This is an intenteresting philosophical movie. I think it many questions aboutthe creation of ourselves and whether we are actually free to do whatever we want. well done",
                reviewDate: (new Date("04/23/22011")),rate: 4.7))
        matrix.save()


       
    }
    def destroy = {
    }
}

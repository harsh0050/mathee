
class MathFacts{
    private static let facts: [String] = [
        "There is no Roman numeral for zero.",
        "If 23 people are in the same room, there is a 50% chance that two people will have the same birthday.",
        "1000 is the only number from 0 to 1000 that has an “a” in it.",
        "Take any shape with the same perimeter, and a circle still possesses the largest area.",
        "Every odd number has an ‘e’.",
        "Among all the Shakespearean dramas, the word “Mathematics” only appears in the play called: “The Taming of the Shrew”.",
        "The mathematical word “hundred” coins from “hundrath” which is an old Norse term that actually referred to a quantity of 120",
        "You can use three geometric cuts to a cake and get 8 pieces.",
        "William Shanks, a renowned Mathematician, spent a large part of his life calculating Mathematical constants and didn’t make a mistake until he reached the 528th digit.",
        "On dice, opposite sides always add up to the number seven.",
        "A standard piece of paper can only be folded seven times, however, according to mathematical theory, if you could fold a piece of paper in half 103 times its thickness would equal that of the observable universe.",
        "If you started with a penny and doubled its value every day for just 30 days, you would have over $5,000,000 Million in the first month.",
        "The number of possible different Sudoku puzzles is 6,670,903,752,021,072,936,960. Math facts are incomplete without sudoku",
        "The Egyptians were the first to use multiplication tables.",
        "The oldest surviving mathematical text is the Rhind Papyrus, written in Egypt around 1650 BC.",
        "The oldest surviving mathematical proof is the Pythagorean Theorem, first proved by the ancient Greeks in the 6th century BC.",
        "The number of possible combinations of a Rubik’s Cube is 43,252,003,274,489,856,000.",
        "The number of possible combinations of a Rubik’s Cube is greater than the number of atoms in the universe.",
        "A typical soccer ball is constructed from pentagons and hexagons; it contains 12 pentagons and 20 hexagons.",
        "The largest known prime number is over 13 million digits long.",
        "-40 °C is equal to -40 °F.",
        "The symbol for division (i.e.÷) is called an obelus.",
        "A ‘jiffy’ is an actual unit of time. It means 1/100th of a second.",
        "If you shuffle a deck of cards properly, it’s more than likely that the exact order of the cards you get has never been seen before in the whole history of the universe.",
        "Most mathematical symbols weren’t invented until the 16th century. Before that, equations were written in words.",
        "111,111,111 × 111,111,111 = 12,345,678,987,654,321",
        "A pizza that has radius \"z\" and height \"a\" has volume Pi × z × z × a",
        "10! seconds is exactly 6 weeks.",
        "There are 80,658,175,170,943,878,571,660,636,856,403,766,975,289,505,440,883,277,824,000,000,000,000 ways to arrange a pack of cards."
    ]
    
    static func getRandomFact() -> String{
        return facts.randomElement()!
    }
}

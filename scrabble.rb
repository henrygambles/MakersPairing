class Scrabble
    def initialize(word)
        @word = word
    end
    
    def score
        total = 0
        if @word != nil
            @word.strip.upcase.split("").map { |char| total += dictionary[char].to_i }
        end
        total
    end
    
    def dictionary
        {
         "A" => 1,
         "E" => 1,
         "I" => 1,
         "O" => 1,
         "U" => 1,
         "L" => 1,
         "N" => 1,
         "R" => 1,
         "S" => 1,
         "T" => 1,
         "D" => 2,
         "G" => 2,
         "B" => 3,
         "C" => 3,
         "M" => 3,
         "P" => 3,
         "F" => 4,
         "H" => 4,
         "V" => 4,
         "W" => 4,
         "Y" => 4,
         "K" => 5,
         "J" => 8,
         "X" => 8,
         "Q" => 10,
         "Z" => 10,
         "" => 0
        }
    end
end

def run_game
    input = gets.chomp
    puts "Your score #{Scrabble.new(input).score}"
end

run_game

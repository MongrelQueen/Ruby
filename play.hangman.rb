class Hangman

  def initialize

    @word = words.sample
    @lives = 7

    @word_teaser = ""

    @word.first.length.times do
      @word_teaser += "_ "
    end
  end

  def words
    [
      ["cricket", "A game played by gentlemen"],
      ["jogging", "We are not walking..."],
      ["celebrate", "Remember special moments"],
      ["continent", "There are 7 of these"],
      ["exotic", "Not from around here..."],
    ]
  end

  def print_teaser last_guess = nil
    update_teaser(last_guess) unless last_guess.nil?
    puts @word_teaser
  end

  def update_teaser last_guess
    new_teaser = @word_teaser.split

    new_teaser.each_with_index do |letter, idx|
      #replace blank values w/guessed letter if matches letter in word
      if letter == '_' && @word.first[idx] == last_guess
        new_teaser[idx] = last_guess
      end
    end

    @word_teaser = new_teaser.join(' ')
  end

  def make_guess
    if @lives > 0
      puts "Enter a letter"
      guess = gets.chomp

      #if letter is not part of word then remove from letters array
      good_guess = @word.first.include? guess
      if guess == "exit"
        puts "Thank you for playing!"
      elsif good_guess
        puts "You are correct."

        print_teaser guess

        if @word.first == @word_teaser.split.join
          puts "Congratulations... you have won!"
        else
          make_guess
        end
      else
        @lives -= 1
        puts "Sorry... you have #{ @lives} guesses left. Try again!"
        make_guess
      end
    else
      puts "Game Over! You Lose."

    end
  end

  def begin
    #ask user for a letter
    puts "New game started... Your word is #{@word.first.length} characters long."
    puts "To exit the game at any point type 'exit'"
    print_teaser

    puts "Clue:  #{ @word.last }"

    make_guess
  end

end

game = Hangman.new
game.begin

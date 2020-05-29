# Add your code here

juke_songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# prints out acceptable commands
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

# lists out songs in the jukebox with ordered list
def list(songs)
  songs.each_with_index do |e, index|
    puts "#{index+1}. #{e}"
  end
end

# asks user for a song. If song is valid, prints song and returns true. If not, prints invalid and returns false
def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip

  songs.each_with_index do |e, index|
    if e.include?(input) || input.to_i == index+1
      puts "Playing #{e}"
      return true
    end
  end
  puts "Invalid input, please try again"
  return false
end

# prints Goodbye
def exit_jukebox
  puts "Goodbye"
end

# run functional jukebox, using methods above
def run(songs)
  input = ""

  until input == 'exit'
    puts "Please enter a command:"
    input = gets.strip

    case input
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
    end

  end
end

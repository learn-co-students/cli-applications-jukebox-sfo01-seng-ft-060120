# Add your code here
require "pry"

songs = [
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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(songs)
  count = 0 
  while count < songs.length do 
    puts "#{count + 1}. #{songs[count]}"
    count += 1
  end 
end 

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  if input.length == 1 
    index = input.to_i - 1 
    if songs[index]
      puts "Playing #{songs[index]}"
    else 
      puts "Invalid input, please try again"
    end 
  else 
    if songs.include? input
      puts "Playing #{input}"
    else 
      puts "Invalid input, please try again"
    end
  end 
end

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  loop do
    puts "Please enter a command:"
    input = gets.strip
    if input == "exit"
      exit_jukebox
      break
    elsif input == "play"
      play(songs)
    elsif input == "list"
      list(songs)
    elsif input == "help"
      help
    end 
  end 
end 
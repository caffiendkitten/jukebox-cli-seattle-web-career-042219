#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
  "Go Go GO" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
  "LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
  "Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
  "Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
  "Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
  "Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
  "Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the follow commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name

  puts my_songs.keys
end


  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
def play(my_songs)
  #max_song_num = songs.length
  puts "Please enter a song name:"
  user_response = gets.chomp

  #if (1..max_song_num).include?(user_response.to_i)
  #  puts "Playing #{songs[user_response.to_i-1]}"
  if my_songs.keys.include?(user_response)
    puts "Playing #{user_response}"
    #open <file path>
    system 'open ' << my_songs[user_response]
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  command = gets.chomp.downcase

  case command
  when command = 'help'
    help
  when command = 'play'
    play(my_songs)
  when command = 'list'
    list(my_songs)
  when command = 'exit'
    exit_jukebox
  else
    puts "Please enter a command:"
  end
end

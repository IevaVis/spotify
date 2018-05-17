# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

# Your Code begins from this line onwards #



if ARGV[0] == "list"
	p "This is your spotify list"
	song = Song.all.order(:status)
	puts "No " +" "*7 +"Song name" + " "*10+ "Status"
	puts "_" * 60
	num = 1
	song.each do |x|
		puts "#{num}"   + " "*7 +"#{x.song_name}" + " "*10 +"#{x.status}"
		num += 1
	end

elsif ARGV[0] == "add" 
	ARGV.shift
	song_name = ARGV.join("")
	song_name = song_name.downcase
	song_name = song_name.titleize
	Song.create(song_name: "#{song_name}", status: "No")
	p "Song #{song_name} was added to the list"

elsif ARGV[0] == "delete" 
	song = Song.all.order(:status)[ARGV[1].to_i - 1]
	if song != nil
		song.destroy
    p "Your song #{song_name} was deleted"
else 
	p "Song number #{ARGV[1]} is not found. Are you sure that this is the right song number?"

end


elsif ARGV[0] == "update"
	song = Song.all.order(:status)[ARGV[1].to_i - 1]
	if song != nil
	song.update(status: "Yes")
	p "Your spotify list was updated"
	else
	p "Song number #{ARGV[1]} is not found. Are you sure that this is the right song number?"
	end
end



if image_index == 0 {
	randomize()
	var rand = playables[random(array_length(playables)) div 1]
	//var rand = snd_pomni
	currentlyplaying = audio_play_sound(rand, 100,false,20)
	image_index = 1	
	
	if rand == snd_pomni {
		alarm[0] = 240
	}
}
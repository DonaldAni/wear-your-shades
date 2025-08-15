if image_index == 0 {
	currentlyplaying = audio_play_sound(playables[irandom(array_length(playables))], 100,false,20)
	image_index = 1	
}
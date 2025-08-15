if currentlyplaying != noone {
	print(audio_is_playing(currentlyplaying))
	if not audio_is_playing(currentlyplaying) {
		currentlyplaying = noone
		image_index = 0
	}
}
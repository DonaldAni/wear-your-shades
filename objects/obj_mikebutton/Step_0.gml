if currentlyplaying != noone {
	if not audio_is_playing(currentlyplaying) {
		currentlyplaying = noone
		image_index = 0
	}
}
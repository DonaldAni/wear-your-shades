var xscl = 1 / 1280 * get_width()
var slidewidth = sprite_get_width(spr_bar)*xscl
var slideheight = sprite_get_height(spr_bar)

if mouse_check_button_pressed(mb_left) {
	var sx = get_width()/2-slidewidth/2+(slidewidth*slider_proglerp)
	var iw = sprite_get_width(spr_sunmoon)
	if mouse_x > sx - iw/2 and mouse_x < sx + iw/2 {
		var sy = get_height() * (158/720) / 2
		var ih = sprite_get_height(spr_sunmoon)
		if mouse_y > sy - ih/2 and mouse_y < sy + ih/2 {
			print("big fat bloated gassy click")
			sliding = true
		}
	}
}

if sliding {
	slider_prog = clamp((mouse_x - (get_width()/2 - slidewidth/2)) / slidewidth, 0, 1)
	if not mouse_check_button(mb_left) {
		sliding = false
		if slider_prog >= 0.9 then slider_prog = 1
		else slider_prog = 0
		
		if slider_prog == 1 {
			// todo: cool shit
			room_goto(rm_index)
		}
	}
}

slider_proglerp = lerp(slider_proglerp, slider_prog, 0.5)
// make n button
//114 189

var nb = instance_create_depth(x-sprite_get_xoffset(sprite_index)+114,yy-sprite_get_yoffset(sprite_index)+189,layer_get_depth(layer)-5,obj_yousurebutton)
nb.image_index = 1

nb.clicked = function() {
	audio_stop_sound(obj_mikebutton.currentlyplaying)
	TweenFire(self, EaseOutQuad, TWEEN_MODE_ONCE, true, 0.5, 0.5, "image_alpha", 1, 0)
	alarm[2] = 60
	instance_destroy(obj_yousurebutton)
}
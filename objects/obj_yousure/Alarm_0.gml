// make y button
// 68 193

var yb = instance_create_depth(x-sprite_get_xoffset(sprite_index)+68,yy-sprite_get_yoffset(sprite_index)+193,layer_get_depth(layer)-5,obj_yousurebutton)

yb.clicked = function() {
	instance_destroy(obj_yousurebutton)
	TweenFire(self, EaseOutQuad, TWEEN_MODE_ONCE, true, 0.5, 0.5, "image_alpha", 1, 0)
	alarm[2] = 60
}

alarm[1] = 0.75 * 60 + 30
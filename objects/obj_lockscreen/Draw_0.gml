draw_sprite(spr_bgfirstscreen, 0, get_width()/2, get_height()/2)

// bars
var col = make_color_rgb(35,36,51)
var yscl =  get_height() * (158/720)
draw_sprite_ext(spr_whitepixel,0,0,0,get_width(), yscl,0, col,0.75)
draw_sprite_ext(spr_whitepixel,0,0,get_height()-yscl,get_width(),yscl,0,col,0.75)

// slider bar
var xscl = 1 / 1280 * get_width()
var slidewidth = sprite_get_width(spr_bar)*xscl
var slideheight = sprite_get_height(spr_bar)

// back colors
var mooncol = make_color_rgb(76,76,76)
draw_sprite_ext(spr_whitepixel,0,get_width()/2-slidewidth/2,yscl/2-slideheight/2,slidewidth,slideheight,0,mooncol,1)
var suncol = c_yellow
draw_sprite_ext(spr_whitepixel,0,get_width()/2-slidewidth/2,yscl/2-slideheight/2,slidewidth*slider_proglerp,slideheight,0,suncol,1)

draw_sprite_ext(spr_bar,0,get_width()/2,yscl/2,xscl,1,0,c_white,1)

// icon
draw_sprite_ext(spr_sunmoon,1,get_width()/2-slidewidth/2+(slidewidth*slider_proglerp),yscl/2,1,1,0,c_white,1-slider_proglerp)
draw_sprite_ext(spr_sunmoon,0,get_width()/2-slidewidth/2+(slidewidth*slider_proglerp),yscl/2,1,1,0,c_white,slider_proglerp)
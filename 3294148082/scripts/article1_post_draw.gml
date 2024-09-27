//if power >= player_id.compactThreshhold {
    //draw_sprite_ext(sprite_index, image_index2, x, y, 1, 1, 0, c_red, power/60);
//}
if articletype == "Box" {
var _y = floor(y/2)*2;

if boxactivated > 0 and state != "blast"{
    var _col1 = make_color_hsv(44,sin(timer/90)*100,(125-abs(sin((timer+60)/28)*60))*boxactivated);
    var _col2 = make_color_hsv(44,sin((timer+30)/30)*100,(125-abs(sin((timer+30)/30)*60))*boxactivated);
    var _col3 = make_color_hsv(44,sin(timer/30)*100,(125-abs(sin(timer/27)*60))*boxactivated);
    var _col4 = make_color_hsv(44,sin(timer/60)*100,(125-abs(sin((timer+15)/29)*60))*boxactivated);
    gpu_set_blendmode(bm_max)
draw_rectangle_color(x-boxwidth,y,x+boxwidth,y-(boxheight*2),_col1,_col2,_col3,_col4,0)
    gpu_set_blendmode(bm_normal)
}
if state = "blast" {
    draw_set_alpha((10-timer2)/10)
    draw_rectangle_color(x-boxwidth,y,x+boxwidth,y-(boxheight*2),c_white,c_white,c_white,c_white,0)
    draw_set_alpha(1)
    if !((timer2/3) > 7) {
    draw_sprite_ext(sprite_get("fireblast"),clamp(timer2/3,0,6),x,y+10,2,2,0,c_white,1)
    }
}

if state != "blast"{
    draw_set_alpha(1)
} else {
    draw_set_alpha((10-timer2)/10)
}
draw_line_width_color(x-(boxwidth+1),_y,x+(boxwidth+1),_y,2,c_black,c_black)
draw_line_width_color(x-boxwidth,_y,x-boxwidth,_y-(boxheight*2),2,c_black,c_black)
draw_line_width_color(x+boxwidth,_y,x+boxwidth,_y-(boxheight*2),2,c_black,c_black)
draw_line_width_color(x+(boxwidth+1),_y-(boxheight*2),x-(boxwidth+1),_y-(boxheight*2),2,c_black,c_black)
    draw_set_alpha(1)
}

if articletype == "BoxSmall" {
var _y = y

if boxactivated > 0 and state != "blast"{
    var _col1 = make_color_hsv(44,sin(timer/90)*100,(125-abs(sin((timer+60)/28)*60))*boxactivated);
    var _col2 = make_color_hsv(44,sin((timer+30)/30)*100,(125-abs(sin((timer+30)/30)*60))*boxactivated);
    var _col3 = make_color_hsv(44,sin(timer/30)*100,(125-abs(sin(timer/27)*60))*boxactivated);
    var _col4 = make_color_hsv(44,sin(timer/60)*100,(125-abs(sin((timer+15)/29)*60))*boxactivated);
    gpu_set_blendmode(bm_max)
draw_rectangle_color(x-boxradius,y-boxradius,x+boxradius,y+boxradius,_col1,_col2,_col3,_col4,0)
    gpu_set_blendmode(bm_normal)
}
if state = "blast" {
    draw_set_alpha((10-timer2)/10)
    draw_rectangle_color(x-boxradius,y-boxradius,x+boxradius,y+boxradius,c_white,c_white,c_white,c_white,0)
    draw_set_alpha(1)
    if !((timer2/3) > 7) {
    draw_sprite_ext(sprite_get("fireblastsmall"),clamp(timer2/3,0,6),x,y,2,2,0,c_white,1)
    }
}

if state != "blast"{
    draw_set_alpha(1)
} else {
    draw_set_alpha((10-timer2)/10)
}
var _co = c_black
draw_line_width_color(x-boxradius,y-boxradius,x-boxradius,y+boxradius,2,_co,_co)
draw_line_width_color(x-boxradius,y+boxradius,x+boxradius,y+boxradius,2,_co,_co)
draw_line_width_color(x+boxradius,y+boxradius,x+boxradius,y-boxradius,2,_co,_co)
draw_line_width_color(x+boxradius,y-boxradius,x-boxradius,y-boxradius,2,_co,_co)
    draw_set_alpha(1)
}
if articletype == "Dodge" {
    draw_sprite_ext(sprite_get("hover"),1,x,y,2*spr_dir,2,0,c_white,(10-timer)/10)
}
if articletype == "TPSquare" {
    var _boxheight = (15-abs((timer-15)))*4
    var _boxwidth = (15-abs((timer-15)))*4
draw_line_width_color(x-(_boxwidth+1),y-_boxheight,x+(_boxwidth+1),y-_boxheight,2,c_black,c_black)
draw_line_width_color(x-_boxwidth,y+_boxheight,x-_boxwidth,y-_boxheight,2,c_black,c_black)
draw_line_width_color(x+_boxwidth,y+_boxheight,x+_boxwidth,y-_boxheight,2,c_black,c_black)
draw_line_width_color(x+(_boxwidth+1),y+_boxheight,x-(_boxwidth+1),y+_boxheight,2,c_black,c_black)
}
if articletype == "Magic" {
    draw_sprite_ext(sprite_index2,image_index2,x,y,1,1,0,c_white,1)
}
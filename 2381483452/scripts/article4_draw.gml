//draw_sprite_ext(sprite_get("ring"),0,x,y-sine,image_xscale,image_yscale,image_angle,image_blend,1-(sine/360))
var asin = 0.5+dsin(sine)*0.2;
draw_sprite_ext(sprite_get("rings"),0,x,y,2,2,0,c_white,asin);

var psin = (platsine/480)*360;

draw_sprite_ext(sprite_get("ringplanet"),0,x+lengthdir_x(190, psin+90),y+lengthdir_y(190, psin+90)-150,2,2,0,c_white,asin)
draw_sprite_ext(sprite_get("ringplanet"),0,x+lengthdir_x(364, largesine+180),y+lengthdir_y(364, largesine+180)-150,2,2,0,c_white,asin)
//draw_sprite_ext(sprite_index,image_index,x,y,image_xscale, image_yscale*-1, image_angle, image_blend, image_alpha)
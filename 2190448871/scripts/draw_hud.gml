//SPEED
var char_x = temp_x;
var x_it = 24;
var curspd = 0;
var speedmult = mariospeed*90.01

var char_y = temp_y;

if mariospeed > 70 {
char_y += random_func(0, 3, 1)-1;
}
//SPD
draw_sprite(sprite_get("speed_meter"),0,char_x,char_y-30)

if scuttle == 0{
draw_sprite(sprite_get("sbug"),0,char_x + 20,char_y-36)
}

char_x += 100;

if mariospeed > 0 {draw_sprite(sprite_get("speed_meter_negative"),0,char_x,char_y-30)
char_x += x_it;
}

curspd = floor(speedmult/1000)
if curspd > 0 {
draw_sprite(sprite_get("speed_meter_numbers"),curspd,char_x,char_y-30)
char_x += x_it;
}

curspd = floor(speedmult/100)
if curspd > 0 {
draw_sprite(sprite_get("speed_meter_numbers"),curspd,char_x,char_y-30)
char_x += x_it;
}

curspd = floor(speedmult/10)
if curspd > 0 {
draw_sprite(sprite_get("speed_meter_numbers"),curspd,char_x,char_y-30)
char_x += x_it;
}
curspd = floor(speedmult)

draw_sprite(sprite_get("speed_meter_numbers"),curspd,char_x,char_y-30)
char_x += x_it;

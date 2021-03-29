

//1st background layer with all 1st layer animations on top

disable_movement = 1;
//need image numbers for each animation
sprite_index = sprite_get("anim1");
anim1_image_number = image_number;
sprite_index = sprite_get("anim2");
anim2_image_number = image_number;
sprite_index = sprite_get("anim14");
anim14_image_number = image_number;
sprite_index = sprite_get("bg6");
image_xscale = 2;
image_yscale = 2;
x = 0;
y = 19;

//anim1 archers and captain
anim1_index = 0;
anim1_speed = 0.2;

ARROW_FRAME_1 = 13;
ARROW_FRAME_2 = 14;

arrow1 = false;
arrow2 = false;

arrow_speed1 = 20;
arrow_angle1 = 15;

arrow_speed2 = 20;
arrow_angle2 = 25;

//anim2 wall slit gun
anim2_index = 0;
anim2_speed = 0.2;

HOLD_TIME_1 = 400
HOLD_FRAME_1 = 1;

hold_timer = 0;

//anim3 read heavy vs blue infantry
anim3_index = 0;
anim3_speed = 0.2

//anim14 captain blowing whistle
a14_activate = false;
anim14_index = 0;
anim14_speed = 0.15

FRAME_FLAG_1 = 15;
FRAME_FLAG_2 = 20;
FRAME_FLAG_3 = 25;
FRAME_FLAG_4 = 40;
RESET_TIME = 2000;

timer = 0;
a14_xOff = 0;
a14_yOff = 0;
a14_hsp = 0;
a14_vsp = 0;
g = 0;
f = 0.3;

sound = true;
//anim15 backdust
a15_activate = false;
a15_xOff = 1400;
a15_yOff = 458;

//anim15 backdust
a15b_activate = false;
a15b_xOff = 0;
//2nd background layer with all 2nd layer animations on top
disable_movement = 1;
//need image numbers for each animation
sprite_index = sprite_get("anim4");
anim4_image_number = image_number;
sprite_index = sprite_get("anim8");
anim8_image_number = image_number;
sprite_index = sprite_get("bg5");
image_xscale = 2;
image_yscale = 2;
x = 35;
y = 45;

//anim 8 airship
a8_activate = false;

anim8_index = 0;
anim8_speed = 0.2;

a8_xOff = 1150;
a8_yOff = -300;

a8_hsp = 1.7;
a8_vsp = 1.5;

x_off = 225;
y_off = 120;

//anim4 trench characters
a4_activate = false;

anim4_index = 0;
anim4_speed = 0.2;

a4_xOff = 804;
a4_yOff = 100;

LOOP_FRAME_1 = 8;
LOOPS_1 = 3
LOOP_FRAME_2 = 24;
HOLD_FRAME_1 = 87;
HOLD_TIME_1 = 100;

hold_timer = 0;
loops = 3;

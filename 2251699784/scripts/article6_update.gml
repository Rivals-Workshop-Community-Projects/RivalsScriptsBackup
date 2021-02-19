//podaboo update
if(jumping) vsp += 0.1;
else vsp = 0;

if(jump_timer == 0){
    jump_timer = jump_timer_amount;
    jumping = true;
    vsp = initial_vsp;
}
else if(y > initialY && vsp > 0) jumping = false;

//rotate sprite
if(vsp > 0) image_angle = 180;
else image_angle = 0;

var anim_speed = 0.2;
image_index += anim_speed;
jump_timer--;
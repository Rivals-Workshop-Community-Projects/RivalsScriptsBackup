//mountain BG layer with all animations on this layer on top
disable_movement = 1;
//need image numbers for each animation
sprite_index = sprite_get("distant_exp_fx");
fx_image_number = image_number;
sprite_index = sprite_get("bg2");
image_xscale = 2;
image_yscale = 2;
x = 260;
y = 100;

//airship
num_airships = 20;
for(i = 0; i < num_airships; ++i){
   airships[i] = 0;
}

air_timer = 0;
add_airship = true;
destroy = false;
max_fall = 0.8

//fx
fx_frames = 4;
fx_anim_speed = 0.2
fx_slots = 2;
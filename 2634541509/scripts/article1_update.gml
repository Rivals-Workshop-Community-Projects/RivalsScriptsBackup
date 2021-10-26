proj_anim++;
if(proj_timer >= 3){
    proj_timer++;
}

hsp = 10 * proj_dir;

if proj_anim == 2 && (scale == 1 || scale == 0.9 || scale == 0.8 || scale == 0.7 || scale == 0.6 || scale == 0.5 || scale == 0.4 || scale == 0.3 ||scale == 0.20){
    scale -= 0.1;
    proj_anim = 0;
}else if proj_anim == 2 && (scale == 0.1 || scale == 0.21 || scale == 0.32 || scale == 0.43 || scale == 0.54|| scale == 0.65 || scale == 0.76 || scale == 0.87){
    scale += 0.11
    proj_anim = 0;
}else if proj_anim == 2 && (scale == 0.98){
    scale = 1;
    proj_anim = 0;
}

if(player_id.proj_check == 0){
create_hitbox(AT_FSTRONG_2, 1, x + (proj_dir * 10), y);
}

sprite_index = sprite_get("fair_proj");
image_yscale = scale;
image_xscale = scale;

if(x <= -500 || x >= 2000){
    instance_destroy(self);
}
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DSPECIAL) {
    //draw_indicator = false;
    if (free) {
        sprite_index = spr_idle_air;
        image_index = prev_spr_index;
    }
    else if (!free && prev_state == PS_CROUCH) {
        sprite_index = spr_idle_cro;
        image_index = prev_spr_index;
    }
    else {
        sprite_index = spr_idle_gro;
        image_index = prev_spr_index;
    }
    //draw_sprite(spr_idle_air, prev_spr_index, x, y);
}

if (state == PS_ATTACK_AIR && attack == AT_FSPECIAL_AIR) {
    if (window > 1 && window < 5) {
        //spr_angle = 45 * spr_dir;
        spr_angle = 0 + (-vsp * 10 * spr_dir);
    }
    else spr_angle = 0;
}

if (state == PS_ATTACK_GROUND && attack == AT_FSPECIAL) {
    if (spr_angle != 0) spr_angle = 0;
}

if state == PS_WALL_JUMP {
    if (state_timer == 0) {
        sound_play(asset_get("sfx_waveland_syl"))
    }

    if clinging {image_index = 0; clingtime = state_timer} else {
    	image_index = ((state_timer-clingtime)/walljump_time)*image_number
    }

}

prev_spr_index = image_index;

if(state == PS_SPAWN){
    sprite_index = sprite_get("intro");
    if(state_timer == 37){
        sound_play(asset_get("sfx_ori_stomp_hit"));
    }
    if(state_timer < 10){
        image_index = 0;
    } else if(state_timer < 70){
        image_index = (state_timer - 10)/5;
    } else {
        sprite_index = sprite_get("idle");
        image_index = state_timer/(1/idle_anim_speed);
    }
}
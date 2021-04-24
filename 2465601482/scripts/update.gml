if state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND {
    item_attack = false;
    if "fs_charge" in self {
        fs_force_fs = false;
    }
}
if !free || state == PS_WALL_JUMP || state == PS_WALL_TECH {
    can_fast_bump = true;
}
if !hitpause && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND {
    if abs(player_scale - target_scale) < 0.05 {
        player_scale = target_scale;
    } else player_scale = ((player_scale-target_scale)*0.7)+target_scale;
}
if has_rune("I") {
    if scale_timer <= 0 sound_stop(sound_get("megaman"));
    else suppress_stage_music(0.0001,0.01);
}
if scale_timer <= 0 target_scale = 1;
hud_offset = (player_scale-1)*char_height*2;
if prev_scale != player_scale {
    check_hitboxes = true;
    check_scale = true;
    image_xscale = player_scale;
    image_yscale = player_scale;
    hurtboxID.image_yscale = player_scale;
    hurtboxID.image_xscale = player_scale*spr_dir; // wish this worked...
    small_sprites = (player_scale*2) - 1;
    knockback_adj = 1/player_scale - 0.5*(metal_timer > 0);
    if scale_timer <= 0 && target_scale == 1 && player_scale == 1 {
        sound_play(sound_get("shrink"));
    }
}
metal_timer -= (metal_timer > 0);
if has_rune("N") {
    if metal_timer > 0 {
        hurtboxID.sprite_index = asset_get("empty_sprite");
        suppress_stage_music(0.0001,0.01);
    } else sound_stop(sound_get("starman"));
} else {
    if metal_timer > 0 {
        knockback_adj = 1/player_scale - 0.5*(metal_timer > 0);
        soft_armor = 10;
        gravity_speed = 1.2;
        if prev_free == true && !free {
            shake_camera(2,3);
        }
    } else {
        gravity_speed = 0.65;
    }
}
if prev_metal == true && metal_timer <= 0 {
    check_hitboxes = true;
    check_metal = true;
    init_shader();
}
if state == PS_RESPAWN || state == PS_DEAD curry_timer = 0;
if curry_timer > 0  {
    if burned == false {
        var burn_me = create_hitbox(AT_FSTRONG,1,x,y-20);
        burn_me.player = 0;
        burn_me.effect = 1;
    }
    burn_timer = burn_timer % 30;
    dash_speed = 9;
    initial_dash_speed = 10;
    ground_friction = 0.01;
    air_max_speed = 10;
    djump_speed = 14;
    jump_speed = 14;
} 
curry_timer -= (curry_timer > 0);
if ( curry_timer <= 0 && prev_curry == true ) {
    check_hitboxes = true;
    check_curry = true;
    burn_timer = 150;
    dash_speed = reset_to_dash_speed;
    initial_dash_speed = reset_to_dash_speed;
    ground_friction = reset_to_ground_friction;
    air_max_speed = reset_to_air_max_speed;
    djump_speed = reset_to_djump_speed;
    jump_speed = reset_to_jump_speed;
}

if item_held != "squeaky_hammer" sound_stop(sound_get("golden_taunt"));
else {
    if floor(image_index) == 2 create_hitbox(AT_TAUNT,1,x,y);
    suppress_stage_music(0.0001,0.01);
    if prev_item_held != "squeaky_hammer" {
        sound_play(sound_get("golden_taunt"),true,false,7);
    }
}
if has_rune("I") && player_scale > 2 {
    if state == PS_DASH && !hitpause && state_timer % 15 == 0 {
        create_hitbox(AT_JAB,2,x,y);
    }
}
if state == PS_PARRY && has_rune("L") && window == 1 && shield_down {
    window_timer = 1;
}
beamsword_out = false;
boomerang_out = false;
superscope_out = false;
scale_timer -= (scale_timer > 0);
prev_metal = (metal_timer > 0);
prev_curry = (curry_timer > 0);
prev_scale = player_scale;
prev_free = free;
prev_item_held = item_held
pop_limit_at = 0;
    if "fs_charge" in self && fs_using_final_smash == true {
        fs_portrait_timer += fs_portrait_timer < 30;
    }
//user event 2 - theikos resetter

theikos_active = false;

//properties (user event 0)
if (!theikos_active)
{
    bossMusic_count = 0;
    sound_stop(sound_get("mus_theikos"));
    sound_stop(sound_get("mus_theikos_demake"));
}

//INIT CHANGES
if (!guardaura_active)
{
    walk_speed = normal_walk_speed;
    walk_turn_time = normal_walk_turn_time;
    initial_dash_speed = normal_initial_dash_speed;
    dash_speed = normal_dash_speed;
    dash_turn_time = normal_dash_turn_time;
    moonwalk_accel = normal_moonwalk_accel;
    wave_land_adj = normal_wave_land_adj;

    air_accel = normal_air_accel;
    prat_fall_accel = normal_prat_fall_accel;
    air_friction = normal_air_friction;
}
dash_anim_speed = .3;
walk_accel = 0.2;
initial_dash_time = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
max_djumps = 3;
fast_fall = 12; //fast fall speed
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
wave_land_time = 8;
wave_friction = .4; //grounded deceleration when wavelanding

//EXTRA FEATURES
reset_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK); //taunt knockback basically insta-kills
holyburn_maxcount = holyburn_default_maxcount;
turbo_time = false; //theikos bar has turbo mode

//visual effects (user event 1)
if (get_player_color(player) != 31)
{
    //CUSTOM VFX
    fx_lightblow1 = hit_fx_create(sprite_get("fx_lightblow1"), 15);
    fx_lightslash = hit_fx_create(sprite_get("fx_lightslash"), 15);
    fx_lightblow2 = hit_fx_create(sprite_get("fx_lightblow2"), 25);
    fx_lightblow3 = hit_fx_create(sprite_get("fx_lightblow3"), 30);
    fx_fireblow1 = hit_fx_create(sprite_get("fx_fireblow1"), 20);
    fx_fireblow2 = hit_fx_create(sprite_get("fx_fireblow2"), 30);
    fx_fireblow3 = hit_fx_create(sprite_get("fx_fireblow3"), 40);

    // d-strong
    reset_attack_value(AT_DSTRONG, AG_SPRITE);
    fx_dstrong_fireblast = hit_fx_create(sprite_get("fx_dstrong_fireblast"), 40);
    fx_rockblow = hit_fx_create(sprite_get("fx_rockblow"), 27);
    // some changed variables are in attack_update

    // u-strong
    reset_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT);
    reset_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_DESTROY_EFFECT);

    // [0] light dagger
    reset_hitbox_value(AT_SKILL0, 1, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL0, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL0, 1, HG_PROJECTILE_DESTROY_EFFECT);
    reset_hitbox_value(AT_SKILL0, 1, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_SKILL0, 2, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL0, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL0, 2, HG_PROJECTILE_DESTROY_EFFECT);
    reset_hitbox_value(AT_SKILL0, 2, HG_HIT_PARTICLE_NUM);
    //air
    reset_hitbox_value(AT_SKILL0_AIR, 1, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL0_AIR, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL0_AIR, 1, HG_PROJECTILE_DESTROY_EFFECT);
    reset_hitbox_value(AT_SKILL0_AIR, 1, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_SKILL0_AIR, 2, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL0_AIR, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL0_AIR, 2, HG_PROJECTILE_DESTROY_EFFECT);
    reset_hitbox_value(AT_SKILL0_AIR, 2, HG_HIT_PARTICLE_NUM);
    // [0] (burning) light dagger
    reset_hitbox_value(AT_SKILL0, 3, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL0, 3, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL0, 3, HG_PROJECTILE_DESTROY_EFFECT);
    reset_hitbox_value(AT_SKILL0, 3, HG_HIT_PARTICLE_NUM);
    //air
    reset_hitbox_value(AT_SKILL0_AIR, 3, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL0_AIR, 3, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL0_AIR, 3, HG_PROJECTILE_DESTROY_EFFECT);
    reset_hitbox_value(AT_SKILL0_AIR, 3, HG_HIT_PARTICLE_NUM);

    // [1] burning fury
    reset_attack_value(AT_SKILL1, AG_SPRITE);
    reset_hitbox_value(AT_SKILL1, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL1, 1, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_SKILL1, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL1, 2, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_SKILL1, 3, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL1, 3, HG_HIT_PARTICLE_NUM);
    //air
    reset_attack_value(AT_SKILL1_AIR, AG_SPRITE);
    reset_hitbox_value(AT_SKILL1_AIR, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL1_AIR, 1, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_SKILL1_AIR, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL1_AIR, 2, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_SKILL1_AIR, 3, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL1_AIR, 3, HG_HIT_PARTICLE_NUM);
    // the buffed attack variables change on attack_update

    // [2] force leap
    reset_hitbox_value(AT_SKILL2, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL2, 2, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_SKILL2, 3, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL2, 3, HG_HIT_PARTICLE_NUM);

    // [3] photon blast
    fx_photonblast = hit_fx_create(sprite_get("fx_photonblast"), 21);
    reset_attack_value(AT_SKILL3, AG_SPRITE);
    reset_hitbox_value(AT_SKILL3, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL3, 1, HG_HIT_PARTICLE_NUM);

    // [4] accelblitz
    fx_accelblitz = hit_fx_create(sprite_get("fx_accelblitz"), 18);
    fx_accel_indicator = sprite_get("accelblitz_indicator");
    reset_hitbox_value(AT_SKILL4, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL4, 1, HG_HIT_PARTICLE_NUM);

    // [5] chasm burster
    reset_attack_value(AT_SKILL5, AG_SPRITE);
    reset_attack_value(AT_SKILL5, AG_AIR_SPRITE)

    fx_earthshatter = hit_fx_create(sprite_get("fx_chasmshatter"), 180);
    reset_hitbox_value(AT_SKILL5, 2, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL5, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL5, 2, HG_HIT_PARTICLE_NUM);

    reset_hitbox_value(AT_SKILL5, 3, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL5, 3, HG_HIT_PARTICLE_NUM);

    reset_hitbox_value(AT_SKILL5, 4, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL5, 4, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL5, 4, HG_HIT_PARTICLE_NUM);

    // [6] power smash
    reset_attack_value(AT_SKILL6, AG_SPRITE);
    reset_hitbox_value(AT_SKILL6, 2, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_SKILL6, 3, HG_HIT_PARTICLE_NUM);

    // [7] guard aura
    fx_guardaura = hit_fx_create(sprite_get("fx_guardaura"), 15);
    reset_hitbox_value(AT_SKILL7, 1, HG_VISUAL_EFFECT); //fx_lightblow2
    reset_hitbox_value(AT_SKILL7, 1, HG_HIT_PARTICLE_NUM);

    // [8] ember fist (the rest of the variables are in attack_update.gml)
    fx_emberfist = hit_fx_create(sprite_get("fx_emberfist"), 30);
    reset_hitbox_value(AT_SKILL8, 1, HG_HIT_PARTICLE_NUM);

    // [9] light hookshot
    reset_hitbox_value(AT_SKILL9, 1, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL9, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL9, 1, HG_PROJECTILE_DESTROY_EFFECT);

    reset_hitbox_value(AT_SKILL9, 2, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_SKILL9, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_SKILL9, 2, HG_PROJECTILE_DESTROY_EFFECT);

    // theikos Ustrong
    reset_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_USTRONG_2, 1, HG_HIT_PARTICLE_NUM);

    // theikos Dstrong
    reset_attack_value(AT_DSTRONG_2, AG_SPRITE);
    fx_firesmear = hit_fx_create(sprite_get("fx_dstrong_t_firesmear"), 20);
    fx_fireground = hit_fx_create(sprite_get("fx_dstrong_t_fireground"), 90);
    reset_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_PARTICLE_NUM);
    reset_hitbox_value(AT_DSTRONG_2, 3, HG_VISUAL_EFFECT);
    reset_hitbox_value(AT_DSTRONG_2, 3, HG_HIT_PARTICLE_NUM);
}
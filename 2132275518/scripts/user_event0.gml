//Enemy creation
//Used for custom variables
enum TARGETING {
    NEAR,
    CUSTOM,
    FAR,
    RANDOM,
    LOW,
    HIGH
}
var eid = 0
if ("enemy_id" in self)
    eid = enemy_id;
switch (eid) {
    case 0: //Good ol' Drac
        if (obj_stage_main.hard_mode)
            hitpoints_max = 377;
        else
            hitpoints_max = 266; //266;
        hitpoints = hitpoints_max;
        
        can_be_grounded = true;
        ignores_walls = false;
        
        attack = 0; //The attack index
        phase = 0; //This is an extra variable for timers
        attack_timer = 0;
        attack_counter = 0;
        attack_times = 0;
        intro_timer = 0;
        death_timer = 0;
        hb_timer = 0;
        knockback_adj = 0;
        gravity_speed = 0;
        
        target_behavior = TARGETING.NEAR;
        player_count_resistance = 0.6;
        activate_kill_effect = true;
        hurtbox_spr = sprite_get("hurtbox_spr");
        sprite_index = sprite_get("empty_sprite"); //This is done to allow custom draw effects.
        mask_index = sprite_get("collision_spr")
        spr_index = sprite_get("dracula1_intro");
        img_index = 0;
        teleport_timer = -1;
        teleport_times = 0;
        next_attack = 2;
        threw_glass = false;
        attack_group = 1;
        mist_timer = -1;
        
        fx_fire1s = hit_fx_create(sprite_get("fx_fire1start"), 24);
        fx_darkinferno_s = hit_fx_create(sprite_get("fx_darkinferno_start"), 16);
        fx_darkinferno_spark = hit_fx_create(sprite_get("fx_darkinferno_sparks"), 24);
        fx_smoke = hit_fx_create(sprite_get("fx_smoke"), 12);
    break;
    case 1: //Big Drac
        if (obj_stage_main.hard_mode)
            hitpoints_max = 477;
        else
            hitpoints_max = 366;
            
        if (obj_stage_main.hard_mode)
            hp_threshold = hitpoints_max * 0.65;
        else
            hp_threshold = hitpoints_max * 0.5;
            
        hp_threshold_hit = false;
        can_be_grounded = true;
        ignores_walls = false;
        hitpoints = hitpoints_max;
        attack = 0; //The attack index
        phase = 0; //This is an extra variable for timers
        attack_group = 1;
        attack_timer = 0;
        attack_counter = 0;
        attack_times = 0;
        jumping_slam_count = 6;
        jumping_slam_times = 0;
        intro_timer = 0;
        death_timer = 0;
        hb_timer = 0;
        knockback_adj = 0;
        gravity_speed = 0.24;
        hitstun_grav = 0.24;
        target_behavior = TARGETING.NEAR;
        player_count_resistance = 0.6;
        activate_kill_effect = true;
        hurtbox_spr = sprite_get("hurtbox_spr2");
        sprite_index = asset_get("dracula1_attack3");
        mask_index = sprite_get("collision_spr")
        claw_spr = -1;
        claw_img = 0;
        fade_white_timer = 0;
        death_fade_timer = 0;
        fx_shock = hit_fx_create(sprite_get("fx_shock"), 18);
    break;
}
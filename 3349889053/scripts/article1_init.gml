
//Article specific
can_be_grounded = true;
ignores_walls = false;
uses_shader=true;

// Minion
hurtbox = instance_create(x,y,"obj_article2")
hurtbox.owner = self;
has_hit = false;
cache = {
    hitpause : -1,
    hsp : 0,
    vsp : 0,
    grav : 0,
}

grab_rectangle = {
    top : {
        x : -80,
        y : -120
    },
    bottom : {
        x : 80,
        y : -30
    }
}

uspec_grab_rectangle = {
    top : {
        x : -110,
        y : -120
    },
    bottom : {
        x : 110,
        y : -20
    }
}

uspec_grabbed_coords = {
    x : -85,
    y : -10
}

grabbed_player = noone;
grabbed_coords = {
    x: 70,
    y: -90
}

death_vfx_offset = -60;

disabled_timer = 0;
disabled_timer_max = 40;

darken_timer = 0;

incubation_growth_cooldown = 0;
incubation_growth_cooldown_max = 14;

invinc_max = 90;
invinc_timer = invinc_max;

gravestone_damage_multiplier = 2;
gravestone_tax_amount = 0.2;

knockback_multiplier = 0.5;
attack_invinc_threshold = 10;

grav = 0.3;
max_fall_speed = 6;

minion_speed = 7

is_activated_minion = false;

incubation = 0;
incubation_to_show = 0;
incubation_max = 100;
incubation_increment = (1/6);
was_parried = false;
incubation_decay_reward = 0.15;

incubation_decrement = 0.1

heal_effect = -1;
heal_effect_decay = 0.05

attack = -1;
window = 0;
window_timer = 0;

state = PS_SPAWN;

state_timer = 0;
lock_state = false;
invicibility_timer = 90;
decay_grab_cooldown = 0;
decay_grab_max_cooldown = 60;

minion_attacks = player_id.minion_attacks;

sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("tombstone_hurt")
//
minion_offset_y = 0;
minion_offset_max_y = -20;
minion_sprite_index = player_id.minion_state_info[? state].sprite;
minion_image_index = 0;

// blastzone vars (VERY useful)
blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);
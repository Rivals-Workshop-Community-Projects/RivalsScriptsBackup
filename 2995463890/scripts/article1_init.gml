state = PS_PRATFALL;
state_timer = 0;
new_state_timer = 0;

should_spawn_splash_hitbox = false;
state_info = ds_map_create();

state_info[PS_PRATFALL] = {
    sprite : sprite_get("puddle_drop"),
    should_loop : true,
    anim_length : 20,
    grav_speed : 0.45,
    next_state : PS_SPAWN,
    mask : sprite_get("puddle_drop_mask")
}

state_info[PS_SPAWN] = {
    sprite : sprite_get("puddle_spawn"),
    should_loop : false,
    anim_length : 16,
    next_state : PS_IDLE,
    mask : sprite_get("puddle_mask")
}

state_info[PS_IDLE] = {
    sprite : sprite_get("puddle_idle"),
    should_loop : true,
    anim_length : 40,
    next_state : PS_ATTACK_GROUND,
    collision_box : {
        x1 : -30,
        x2 : 28,
        y1 : -50,
        y2 : 0,
    }
}

state_info[PS_ATTACK_GROUND] = {
    sprite : sprite_get("puddle_attack"),
    should_loop : false,
    anim_length : 40,
    next_state : PS_DEAD
}

state_info[PS_ATTACK_AIR] = {
    sprite : sprite_get("puddle_throw"),
    should_loop : false,
    anim_length : 55,
    next_state : PS_DEAD
}

state_info[PS_DEAD] = {
    sprite : sprite_get("puddle_despawn"),
    should_loop : false,
    anim_length : 15,
    next_state : -1
}

xdir = 0;
ydir = 0;

plat_to_clamp_x = 0;
plat_to_clamp = noone;

info = state_info[state]
sprite_index = info.sprite;
image_index = 0;
mask_index = info.mask;

ignores_walls = false
disable_movement = false;

has_grabbed = false;
grab_position = [0,-40];
depth = player_id.depth - 1

player_charge_mod = 0;

image_speed = 0;

droplet_hitbox = noone;
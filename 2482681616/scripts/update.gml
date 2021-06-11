//Training toggle
training_toggle = get_training_cpu_action() != CPU_FIGHT

//USPECIAL wall cling
if (!free && uspecial_wall_times > 0) {
    uspecial_wall_times = 0;
}

//Slow Start countdown
if (state == PS_ATTACK_AIR && state == PS_ATTACK_GROUND )
{
    if (attack != AT_FSPECIAL)
        max_fall = def_max_fall;
}
else {
    max_fall = def_max_fall;
}

//Slow start hitbox adjustment
with (pHitBox)
{
    if (player_id == other.id) {
        if ("orig_kb_value" not in self) {
            orig_kb_value = kb_value;
            orig_kb_scale = kb_scale;
            if (attack = AT_FSPECIAL && hbox_num >= 2) {
                orig_damage = ease_linear(damage, damage + 6, round(player_id.fspecial_ground_dist), 50);
            }
            else {
                orig_damage = damage;
            }
        }
        
        if (player_id.slowstart_state == player_id.SLOWSTART_STATE_ON) {
            if (attack != AT_USTRONG && hbox_num <= 3)
                kb_value = orig_kb_value * player_id.slowstart_knockback_mult;
                kb_scale = orig_kb_scale * player_id.slowstart_knockbackscale_mult;
            	damage = orig_damage * player_id.slowstart_damage_mult
        }
    }
}

//Slow Start countdown
if (state != PS_DEAD && state != PS_RESPAWN && state != PS_SPAWN)
{
    if (slowstart_timer > 0 && !training_toggle)
        slowstart_timer --;
}

//Slow Start state and status 
if (slowstart_timer > 0)
    slowstart_state = SLOWSTART_STATE_ON
else
    slowstart_state = SLOWSTART_STATE_OFF
    
    
if (slowstart_state == SLOWSTART_STATE_ON)
{
    walk_speed = def_walk_speed * slowstart_movement_mult;
    initial_dash_speed = def_initial_dash_speed * slowstart_movement_mult;
    dash_speed = def_dash_speed * slowstart_movement_mult;
    dash_turn_time = def_dash_turn_time * slowstart_movement_mult;
    moonwalk_accel = def_moonwalk_accel * slowstart_movement_mult;
    
    max_jump_hsp = def_max_jump_hsp * slowstart_movement_mult;
    air_max_speed = def_air_max_speed * slowstart_movement_mult;
    jump_change = def_jump_change * slowstart_movement_mult;
    air_dodge_speed = def_air_dodge_speed * slowstart_movement_mult;
    roll_forward_max = def_roll_forward_max * slowstart_movement_mult;
    roll_backward_max = def_roll_backward_max * slowstart_movement_mult;
}
else 
{
    walk_speed = def_walk_speed;
    initial_dash_speed = def_initial_dash_speed;
    dash_speed = def_dash_speed;
    dash_turn_time = def_dash_turn_time;
    moonwalk_accel = def_moonwalk_accel;
    
    max_jump_hsp = def_max_jump_hsp;
    air_max_speed = def_air_max_speed;
    jump_change = def_jump_change;
    air_dodge_speed = def_air_dodge_speed;
    roll_forward_max = def_roll_forward_max;
    roll_backward_max = def_roll_backward_max;
}

//Stat effect
if (slowstart_stateffect_timer >= 0)
    slowstart_stateffect_timer ++;
    
if (slowstart_stateffect_timer >= slowstart_stateffect_duration)
    slowstart_stateffect_timer = -1;
    
if (slowstart_stateffect_timer >= 0) {
    if (slowstart_stateffect_timer >= 0 && slowstart_stateffect_timer < slowstart_stateffect_duration / 2)
        slowstart_stateffect_alpha += 0.1
    if (slowstart_stateffect_timer >= slowstart_stateffect_duration / 2 && slowstart_stateffect_timer < slowstart_stateffect_duration)
        slowstart_stateffect_alpha -= 0.1
}
else {
    slowstart_stateffect_alpha = 0;
}

slowstart_stateffect_alpha = clamp(slowstart_stateffect_alpha, 0, 0.45);

if (old_slowstart_state != slowstart_state) {
    slowstart_stateffect_timer = 0;
    if (slowstart_state == SLOWSTART_STATE_OFF) {
        slowstart_stateffect_bg = sprite_get("statchange_bg");
        slowstart_stateffect_bgdir = -1;
        sound_play(sound_get("sfx_statup"));
    }  
    if (slowstart_state == SLOWSTART_STATE_ON) {
        slowstart_stateffect_bg = sprite_get("statchange_bg2");
        slowstart_stateffect_bgdir = 1;
        sound_play(sound_get("sfx_statdown"));
    }  
}

old_slowstart_state = slowstart_state
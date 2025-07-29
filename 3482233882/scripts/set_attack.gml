
do_turbine_recolor = false; // it's easiest to just set it here...

if (debug_display_opened && attack_pressed && taunt_pressed) attack = AT_TAUNT;

if (attack == AT_JAB) {
    num_loops = attack_speed;
    set_hitbox_value(AT_JAB, 1, HG_HITSTUN_MULTIPLIER, 1);
    set_hitbox_value(AT_JAB, 2, HG_HITSTUN_MULTIPLIER, 1);
    set_hitbox_value(AT_JAB, 3, HG_HITSTUN_MULTIPLIER, 1);
    set_hitbox_value(AT_JAB, 4, HG_HITSTUN_MULTIPLIER, 1);
    set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
	set_hitbox_value(AT_JAB, 2, HG_FORCE_FLINCH, 1);
}

if (attack == AT_TAUNT) {
    if (up_down) attack = utaunt_index;
    else if (down_down) attack = dtaunt_index;
    else attack = ntaunt_index;
}

if (attack == AT_FSTRONG) attack = fstrong_index;

if (attack == AT_USTRONG) attack = ustrong_index;

if (attack == AT_FSPECIAL && (free || state == PS_JUMPSQUAT)) attack = AT_FSPECIAL_AIR;
if (prev_attack == AT_FSPECIAL_AIR) hsp = clamp(hsp, -leave_ground_max, leave_ground_max);
if attack == AT_FSPECIAL && item_grid[39][4] > 0 {
	set_attack_value(AT_FSPECIAL, AG_SPRITE                         , sprite_get("fspec_hardlight"));
}

if (attack == AT_DSPECIAL) {
    if (!instance_exists(chest_obj)) chest_obj = noone;
    else if (chest_obj.state % 10 == 2 && chest_obj.state != 2) {
        attack = AT_DSPECIAL_2;
        var radius = (chest_obj.is_large) ? 54 : 54;
        if (point_distance(x, y, chest_obj.x, chest_obj.y) >= radius) move_cooldown[AT_DSPECIAL_2] = 2;
        halt_for_trishop = false;
    }
    else if (chest_obj.state != clamp(chest_obj.state, 1, 2) && move_cooldown[AT_DSPECIAL] == 0) {
    	sound_play(asset_get("mfx_tut_fail"), false, false, 1, 0.5);
        move_cooldown[AT_DSPECIAL] = 45; // Hacky anti-spam measure, gets reset by article1 when it's ready
    }
}

if (attack != AT_TAUNT && debug_display_opened && debug_display_type == 3 && move_cooldown[attack] < 2) move_cooldown[attack] = 2;

// Crit handling
if (attack == AT_DTILT || attack == AT_UAIR || attack == AT_DAIR || attack == AT_USTRONG) {
    
    var do_enhanced_crits = snakeeyes_active || item_grid[40][4] > 0;
    
    if (do_enhanced_crits) enable_enhanced_crit(attack, 2, 3, 4);
    else enable_basic_crit(attack, 2, 3, 4);
    
}
else if (attack == AT_USTRONG_2) {
    
    var do_enhanced_crits = snakeeyes_active || item_grid[40][4] > 0;
    
    if (do_enhanced_crits) enable_enhanced_crit(attack, 7, 8, 9);
    else enable_basic_crit(attack, 7, 8, 9);
    
}
snakeeyes_active = false;



#define enable_enhanced_crit(atk, normal, enhanced, ignition)
set_hitbox_value(atk, normal, HG_WINDOW, 99);
reset_hitbox_value(atk, enhanced, HG_WINDOW);

reset_hitbox_value(atk, enhanced, HG_DAMAGE);
reset_hitbox_value(atk, enhanced, HG_KNOCKBACK_SCALING);

var enhanced_dmg = get_hitbox_value(atk, enhanced, HG_DAMAGE);
var enhanced_kbs = get_hitbox_value(atk, enhanced, HG_KNOCKBACK_SCALING);
if (item_grid[56][4] > 1 && snakeeyes_active) {
    var mult = item_grid[56][4]-1;
    enhanced_dmg += 5 * mult;
    enhanced_kbs += 0.1 * mult;
}
if (item_grid[40][4] > 0) {
    var mult = (item_grid[40][4]-1+snakeeyes_active); // A little extra reward for stacking these effects
	enhanced_dmg += 5 * mult;
	enhanced_kbs += 0.1 * mult;
}
set_hitbox_value(atk, enhanced, HG_DAMAGE, enhanced_dmg);
set_hitbox_value(atk, enhanced, HG_KNOCKBACK_SCALING, enhanced_kbs);

if (item_grid[25][4] > 0) {
    set_hitbox_value(atk, enhanced, HG_HIT_LOCKOUT, 0);
    reset_hitbox_value(atk, ignition, HG_DAMAGE);
    reset_hitbox_value(atk, ignition, HG_KNOCKBACK_SCALING);
    var ignition_dmg = get_hitbox_value(atk, ignition, HG_DAMAGE);
    var ignition_kbs = get_hitbox_value(atk, ignition, HG_KNOCKBACK_SCALING);
    if (snakeeyes_active) {
        var mult = item_grid[56][4];
        ignition_dmg += 5 * mult;
        ignition_kbs += 0.1 * mult;
    }
    if (item_grid[40][4] > 0) {
        var mult = item_grid[40][4]+snakeeyes_active;
    	ignition_dmg += 5 * mult;
    	ignition_kbs += 0.1 * mult;
    }
    ignition_kbs += 0.05 * item_grid[25][4];
    set_hitbox_value(atk, ignition, HG_DAMAGE, ignition_dmg);
    set_hitbox_value(atk, ignition, HG_KNOCKBACK_SCALING, ignition_kbs);
} else {
    reset_hitbox_value(atk, enhanced, HG_HIT_LOCKOUT);
}


#define enable_basic_crit(atk, normal, enhanced, ignition)
reset_hitbox_value(atk, normal, HG_WINDOW);
set_hitbox_value(atk, enhanced, HG_WINDOW, 99);

reset_hitbox_value(atk, ignition, HG_DAMAGE);
reset_hitbox_value(atk, ignition, HG_KNOCKBACK_SCALING);
var ignition_kbs = get_hitbox_value(atk, ignition, HG_KNOCKBACK_SCALING);
ignition_kbs += 0.05 * item_grid[25][4];
set_hitbox_value(atk, ignition, HG_KNOCKBACK_SCALING, ignition_kbs);

if (item_grid[25][4] > 0) set_hitbox_value(atk, normal, HG_HIT_LOCKOUT, 0);
else reset_hitbox_value(atk, normal, HG_HIT_LOCKOUT);
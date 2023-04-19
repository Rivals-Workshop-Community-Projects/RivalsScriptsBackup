//#region Local Variables
in_battle = get_training_cpu_action() == CPU_FIGHT;
is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR); //attack check - becomes true if the state is PS_ATTACK_GROUND or PS_ATTACK_AIR
is_dodging = (hurtboxID.dodging); //dodge check - becomes true if the character is invincible when dodging/teching

if (is_attacking)
{
    window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1)) - 1;
    window_last = get_attack_value(attack, AG_NUM_WINDOWS);
    window_cancel_time = get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME);

    //window_end - takes the last frame of the window (includes whifflag)
    //window_last - checks the last window in the attack
    //window_cancel_time - if the window has a cancel frame to attack/special, this variable can detect the frame it can happen
}
else
{
    if (my_grab_id != noone) my_grab_id = noone; //if the player isn't attacking, we don't need the grab_id to stay

    if (state_timer == 0)
    {
        //force reset spr_angle and draw offsets on the start of every state
        //normally we put this sort of stuff in animation.gml, but update.gml runs before animation.gml
        if (spr_angle != 0) spr_angle = 0;
        if (draw_x != 0) draw_x = 0;
        if (draw_y != 0) draw_y = 0;
    }
}


//grab logic
if (my_grab_id != noone) //if you have grabbed someone
{
	grab_time ++;

    with (my_grab_id)
	{
		hitstop = 2; //freeze grabbed foe

		if (last_player_hit_me != other.player) //if another player hits the grabbed player stop the grab sequence
		{
			hitstop = 0;
			with (other)
			{
				my_grab_id = noone;
				if (!free) hsp = spr_dir*-6; //push back for some extra effect (ground only)
				set_state(free ? PS_IDLE_AIR : PS_IDLE);
			}
		}
    }
}
else grab_time = 0;
custom_attack_grid();
//#endregion

if (get_player_color(player) == 10) {
	init_shader();
}

if (has_rune("L"))
	update_crits();
//Debug Tools
if (!in_battle)  {
	skill_points = 1;
}

if (debug_taunt_buffer > 0) debug_taunt_buffer--;

//EXP Handling
skill_exp_smooth = lerp(skill_exp_smooth, skill_exp, 0.1);

if (skill_points > 0 && visible && in_battle) {
	if (get_gameplay_time() % 8 == 0) {
		var rand_x = -32 + random_func(0, 64, true);
		var rand_y = -1 * random_func(0, 64, true);
		spawn_hit_fx(round(x + rand_x), round(y + rand_y), fx_sparkle)
	}
}

if(experience_reached()){
	level_up();
	sound_play(sound_get("sfx_levelup"));
}

with (hit_fx_obj) {
	if (player_id == other.id) {
		if (hit_fx == other.fx_magic_ground) {
			step_timer -= other.hitpause;
			x = other.x + x_off;
			y = other.y;
			
			if (other.state_cat == SC_HITSTUN)
			{
				step_timer = 999;
			}
		}
		if (hit_fx == other.fx_levelup || hit_fx == other.fx_levelup_fg) {
			x = other.x;
			y = other.y;
		}
	}
}


with (pHitBox) {
	if (player_id == other.id) {
		if (attack == AT_USPECIAL) {
			if (hitbox_timer == 0) {
				damage *= lerp(1, 1.6, other.strong_charge / 60)
				damage = ceil(damage);
			}
		}
	}
	
}

for (var i = 0; i < array_length(skill_current); i++) {
	if (skill_current[i] != skill_prev[i])
	{
		update_attacks(skill_prev[i], 1);
		update_attacks(skill_current[i], 0);
		skill_prev[i] = skill_current[i];
	}
}

if (instance_exists(dspecial_chest)) {
	if (dspecial_chest.state == PS_SPAWN)  {
		dspecial_chest.hitstop = hitstop;
		
		dspecial_chest.x = x + 48 * spr_dir;
		dspecial_chest.y = y;
	}
	if (dspecial_chest.window == 1 && dspecial_chest.state == PS_IDLE)
	{
		dspecial_chest.x = x + 48 * spr_dir;
		dspecial_chest.y = y;
	}
}

if ((!is_attacking || (attack != AT_DSPECIAL || ((window == 5 || window == 6) && window_timer == 12))) && instance_exists(dspecial_chest)) {
	if (dspecial_chest.window == 1)
	{
		dspecial_chest.state = PS_IDLE;
		dspecial_chest.window = 2;
		dspecial_chest.window_timer = 0;
	}
}

//Jump Cancel Limit
if (!free && jump_cancel_times > 0) {
	jump_cancel_times = 0;
}

//USPecial once per airtime thingy
if (move_cooldown[AT_USPECIAL_2] > 0) {
	if (free && state_cat != PS_HITSTUN && state != PS_WALL_JUMP)
		move_cooldown[AT_USPECIAL_2] ++;
}
#define custom_attack_grid()
//looping window for X times
var window_loop_value;
window_loop_value = get_window_value(attack, window, AG_WINDOW_LOOP_TIMES);

if (!hitpause && is_attacking)
{
    //loop window
    if (get_window_value(attack, window, AG_WINDOW_TYPE) == 9) //this will make it so it only works if the window type is 9
    {
        if (window_timer == window_end-1) //checks almost the end of the window
        {
            attack_end(attack); //reset hitboxes in case the window has a hitbox so they can hit again
            if (window_loops <= window_loop_value) window_timer = 0; //go back to the start of it manually
        }

        if (window_loop_value > 0) //if the loop value is over 0, this looping mechanic will work
        {
            if (window_timer == 0) window_loops ++; //at the start of the window, count a loop up

            if (window_loops > window_loop_value) //when all the loops are over, go to the next window and reset the loop value
            {
                destroy_hitboxes();
                window += 1;
                window_timer = 0;
                window_loops = 0;
            }
        }
    }
}

if (!is_attacking) window_loops = 0; //resets loop value in case the character isn't attacking (useful for hitstun)

#define experience_reached()
return skill_exp >= ease_quadIn(skill_exp_min, skill_exp_max, skill_level-1, skill_level_max);

#define level_up()
var remainder = skill_exp - ease_quadIn(skill_exp_min, skill_exp_max, skill_level-1, skill_level_max);
skill_exp = 0;
skill_exp_smooth = 0;
skill_level++;
skill_points++;
skill_exp += remainder;
var fx = spawn_hit_fx(round(x), round(y), fx_levelup);
fx.spr_dir = 1;
var fx = spawn_hit_fx(round(x), round(y), fx_levelup_fg);
fx.depth = depth - 1;
fx.spr_dir = 1;
#define update_attacks(_lwobj, _reset) 
if (_lwobj == undefined) return;

for (var i = 0; i < array_length(_lwobj.attacks); i++) {
	var att = _lwobj.attacks[i];
	if (!_reset) {
		set_attack_value(att.attack, AG_SPRITE, att.sprite);
		set_attack_value(att.attack, AG_HURTBOX_SPRITE, att.hurtbox);
		set_attack_value(att.attack, AG_AIR_SPRITE, att.air_sprite);
		set_attack_value(att.attack, AG_HURTBOX_AIR_SPRITE, att.air_hurtbox);
		set_attack_value(att.attack, AG_STRONG_CHARGE_WINDOW, att.strong_charge_window);
		
		
		for (var j = 0; j < array_length(att.startup_windows); j++) {
			set_window_value(att.attack, att.startup_windows[j], AG_MUNO_WINDOW_ROLE, 1);
		}
		
		for (var j = 0; j < array_length(att.active_windows); j++) {
			set_window_value(att.attack, att.active_windows[j], AG_MUNO_WINDOW_ROLE, 2);
		}
		
		for (var j = 0; j < array_length(att.recovery_windows); j++) {
			set_window_value(att.attack, att.recovery_windows[j], AG_MUNO_WINDOW_ROLE, 3);
		}
		
		for (var j = 0; j < array_length(att.hitboxes); j++) {
			set_hitbox_value(att.attack, att.hitboxes[j], HG_MUNO_HITBOX_EXCLUDE, 0);
		}
	}
	else {
		reset_attack_value(att.attack, AG_SPRITE);
		reset_attack_value(att.attack, AG_HURTBOX_SPRITE);
		reset_attack_value(att.attack, AG_STRONG_CHARGE_WINDOW);
		reset_attack_value(att.attack, AG_AIR_SPRITE);
		reset_attack_value(att.attack, AG_HURTBOX_AIR_SPRITE);
		
		
		for (var j = 0; j < array_length(att.startup_windows); j++) {
			reset_window_value(att.attack, att.startup_windows[j], AG_MUNO_WINDOW_ROLE);
		}
		
		for (var j = 0; j < array_length(att.active_windows); j++) {
			reset_window_value(att.attack, att.active_windows[j], AG_MUNO_WINDOW_ROLE);
		}
		
		for (var j = 0; j < array_length(att.recovery_windows); j++) {
			reset_window_value(att.attack, att.recovery_windows[j], AG_MUNO_WINDOW_ROLE);
		}
		
		for (var j = 1; j < get_num_hitboxes(att.attack); j++) {
			reset_hitbox_value(att.attack, j, HG_MUNO_HITBOX_EXCLUDE);
		}
	}
}

#define update_crits() 
var crit_chance = 12.5;
var crit_damage_mult = 2;
var crit_kb_mult = 0.75;

with (pHitBox) {
	if (player_id == other.id) {
		if ("harold_crit" not in self) {
				harold_crit = false;
				if (kb_scale > 0) {
				if (attack == AT_FSTRONG || attack == AT_FSTRONG_2
				|| attack == AT_USTRONG || attack == AT_USTRONG_2
				|| attack == AT_DSTRONG || attack == AT_DSTRONG_2) {
					if (random_func(0, 100, true) <= crit_chance) {
						harold_crit = true;
					}
				}
				if (harold_crit) {
					damage *= crit_damage_mult;
					kb_value *= crit_kb_mult;
				}
			}
		}
	}
	
}
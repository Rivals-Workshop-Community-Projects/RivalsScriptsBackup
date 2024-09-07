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

		if (last_player != other.player) //if another player hits the grabbed player stop the grab sequence
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

if ("alt_cur" in self && alt_cur == 29) {
	if (is_attacking && attack == AT_TAUNT_2 && window <= 6)
		set_victory_portrait(sprite_get("portrait_riptide"))
	else
		set_victory_portrait(sprite_get("portrait"))
}

//Fair refresh
if (!free && fair_wall_times > 0) {
    fair_wall_times = 0;
}

if (!free && uspec_times > 0) {
    uspec_times = 0;
}

if (impulse_active_previous != impulse_active) {
	impulse_active_previous = impulse_active;
	if (impulse_active) {
		walk_speed *= impulse_walk_speed_adj;
		walk_accel *= impulse_walk_speed_adj;
		initial_dash_speed *= impulse_initial_dash_speed_adj;
		dash_speed *= impulse_dash_speed_adj;
		ground_friction *= impulse_ground_friction_adj;
		air_accel *= impulse_air_accel_adj;
		air_friction *= air_friction_def;
		air_max_speed *= impulse_air_accel_adj;
		gravity_speed *= impulse_grav_adj;
		max_fall *= impulse_fall_speed_adj;
		fast_fall *= impulse_fall_speed_adj;
	}
	else {
		walk_speed = walk_speed_def;
		walk_accel = walk_accel_def;
		initial_dash_speed = initial_dash_speed_def;
		dash_speed = dash_speed_def;
		ground_friction = ground_friction_def;
		air_accel = air_accel_def;
		air_friction = air_friction_def;
		air_max_speed = air_max_speed_def;
		gravity_speed = gravity_speed_def;
		max_fall = max_fall_def;
		fast_fall = fast_fall_def;
	}
}

if (state != PS_DEAD) {
	impulse_activation_percent = get_impulse_activation();
	if (impulse_active) {
		impulse_timer ++;
		
		if (impulse_timer % 8 == 0) {
			var rand_x = -32 + random_func(0, 64, true);
			var rand_y = -32 + random_func(0, 64, true);
			spawn_hit_fx(round(x + rand_x), round(y - 32 + rand_y), fx_install_part)
		}
		//Empower hitboxes
		with (pHitBox) {
			if (player_id == other.id) {
				if (hitbox_timer == 0) {
					damage *= other.impulse_damage_adj;
					damage = ceil(damage);
				}
			}
		}
		//KOs lose Anthem ~50 points
		with (oPlayer) {
			if (id == other.id) continue;
			if ((state == PS_RESPAWN || state == PS_DEAD) && state_timer == 0) {
				if (last_player == other.player) {
					with (other) lose_impulse_points(50, other.player);
				}
			}
		}
		
		if (impulse_points <= 0) {
			print("Impulse Deactivated");
			impulse_active = false;
			impulse_points = 0;
			sound_play(sound_get("sfx_anthem_install_de"));
			if (state != PS_RESPAWN) {
				var fx = spawn_hit_fx(round(x), round(y), fx_install_de_bg);
				fx.depth = depth + 1;
				fx.spr_dir = 1;
				var fx = spawn_hit_fx(round(x), round(y), fx_install_de_fg);
				fx.depth = depth - 1;
				fx.spr_dir = 1;
			}
			if (state == PS_IDLE) {
				state_timer = 0;
			}
		}
	}
	else {
		if (impulse_timer > 0) {
			impulse_timer ++;
			if (impulse_timer % 120 <= 60 || impulse_timer % 120 == 0) {
				impulse_timer = 0
			}
		}
		else impulse_timer = 0;
		impulse_ko = false;
		
		if ((can_acivate_impulse() || (taunt_pressed && down_down && !in_battle)) && impulse_can_activate) {
			impulse_active = true;
			impulse_can_activate = false;
			shake_camera(4, 4);
			sound_play(sound_get("sfx_anthem_install_act"));
			var fx = spawn_hit_fx(round(x), round(y), fx_install_act_bg);
			fx.depth = depth + 1;
			fx.spr_dir = 1;
			var fx = spawn_hit_fx(round(x), round(y), fx_install_act_fg);
			fx.depth = depth - 1;
			fx.spr_dir = 1;
			give_impulse_points(90);
			//print("Impulse activated. Percent:" + string(get_impulse_activation()));
			//print("Impulse activated. Points:" + string(impulse_points));
		}
	}
}
else {
	if (impulse_points > 0) {
		//print("Impulse Deactivated");
		impulse_active = false;
		impulse_points = 0;
		sound_play(sound_get("sfx_anthem_install_de"));
	}
}


with (hit_fx_obj) {
	if (player_id == other.id) {
		if (hit_fx == other.fx_install_act_fg || hit_fx == other.fx_install_act_bg
		|| hit_fx == other.fx_install_de_fg || hit_fx == other.fx_install_de_bg) {
			x = other.x;
			y = other.y - 32;
		}
	}
}


//Status Effect
with (oPlayer) {
	if ("anthem_status_id" in self) {
		if (anthem_status_id == other.id) {
			anthem_status_timer++;
			if (array_length(anthem_status_stacks) > 0) {
				for (var i = 0; i < array_length(anthem_status_stacks); i++) {
					var stack = anthem_status_stacks[i];
					if (!instance_exists(stack)) {
						anthem_status_stacks = array_cut(anthem_status_stacks, i);
						continue;
					}
					
					with (stack) {
						var rot_current = (360 * (i / array_length(other.anthem_status_stacks)) + hitbox_timer * 5) % 360;
						var len_current = 64;
						var time_end = (length - 1) - (i * 3);
						if (other.state == PS_DEAD || other.state == PS_RESPAWN) {
							instance_destroy(id);
							other.anthem_status_stacks = array_cut(other.anthem_status_stacks, i);
							continue;
						}
						can_hit[orig_player] = false;
						can_hit[player] = false;
				    	
				    	if (hitbox_timer >= time_end - 30) {
				    		len_current = ease_backIn(64, 8, hitbox_timer - (time_end - 30), 30, 5);
				    		with (player_id) other.sprite_index = sprite_get("fx_fspecial_proj2b");
				    		image_index = ease_linear(0, 6, hitbox_timer - (time_end - 30), 30)
				    	}
				    	else {
				    		with (player_id) other.sprite_index = sprite_get("fx_fspecial_proj2");
				    		image_index += 0.25;
				    		
				    		if (image_index >= 8)
				    		    image_index = 3;
				    	}
				    	
				    	x = other.x + lengthdir_x(len_current, rot_current);
				    	y = other.y - (other.char_height / 2) + lengthdir_y(len_current, rot_current);
				    	
				    	if (hitbox_timer >= time_end) {
				    		var rand_x = -32 + random_func(0, 64, true);
				    		var rand_y = -32 + random_func(0, 64, true);
							var hbox = create_hitbox(AT_FSPECIAL, 4, floor(x + rand_x), floor(y + rand_y))
							hbox.player = player;
							if (other.anthem_status_kb > 0) {
								if (i <= 0) {
									hbox.kb_value = other.anthem_status_kb;
									hbox.kb_scale = other.anthem_status_kbs;
									hbox.kb_angle = other.anthem_status_angle;
									hbox.hitstun_factor = 0;
								}
							}
							other.anthem_status_stacks = array_cut(other.anthem_status_stacks, i);
    			    		sound_play(asset_get("sfx_abyss_explosion_big"));
							instance_destroy(id);
							continue;
				    	}
					}
				}
			}
			else {
				anthem_status_timer = 0;
				anthem_status_id = noone;
				anthem_status_owner = noone;
				anthem_status_kb = -1;
				anthem_status_kbs = -1;
				anthem_status_angle = -1;
			}
		}
		
	}
	else {
		anthem_status_timer = 0;
		anthem_status_id = noone;
		anthem_status_owner = noone;
		anthem_status_stacks = [];
		anthem_status_kb = -1;
		anthem_status_kbs = -1;
		anthem_status_angle = -1;
	}
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

#define get_impulse_activation()
var self_stocks = get_player_stocks(player);
var target_max_stocks = 0;

var self_damage = get_player_damage(player);
var target_max_damage = 0;

var self_team = get_player_team(player);

with (oPlayer) {
	if (id == other.id) continue;
	if (get_player_team(player) == self_team) continue;
	if (state == PS_DEAD) continue;
	var st = get_player_stocks(player);
	if (st >= target_max_stocks) target_max_stocks = st;
	var d = get_player_damage(player);
	if (d >= target_max_damage) target_max_damage = d;
}

var stock_diff_max = self_stocks - target_max_stocks;
var damage_diff_max = self_damage - target_max_damage;

var stock_advantage = 0;

if (stock_diff_max > 0) stock_advantage = -10 * stock_diff_max;
else if (stock_diff_max < 0) stock_advantage = 5 * stock_diff_max;

var activation_percent = 80;
damage_diff_max -= self_damage;

if (damage_diff_max > 50) {
	activation_percent -= 30;
}
if (damage_diff_max <= 50 && damage_diff_max >= 10) {
	activation_percent -= ease_sineIn(30, 0, abs(damage_diff_max) - 50, 40);
}
if (damage_diff_max <= -100 && damage_diff_max >= -150) {
	activation_percent += ease_sineIn(0, 20, abs(damage_diff_max) - 100, 50);
}

if (damage_diff_max <= -150) {
	activation_percent += 20;
}

activation_percent += stock_advantage;

activation_percent = max(activation_percent + stock_advantage, 1);
return activation_percent;
	
#define can_acivate_impulse()
var self_damage = get_player_damage(player);
var activation_percent = impulse_activation_percent;

return activation_percent > 0 && self_damage >= activation_percent;

#define give_impulse_points(_points)
var self_stocks = get_player_stocks(player);
var target_max_stocks = 0;
var self_team = get_player_team(player);
with (oPlayer) {
	if (id == other.id) continue;
	if (get_player_team(player) == self_team) continue;
	if (state == PS_DEAD) continue;
	var st = get_player_stocks(player);
	if (st >= target_max_stocks) target_max_stocks = st;
}

var stock_diff_max = self_stocks - target_max_stocks;
impulse_points += abs(_points);

if (stock_diff_max > 0)
	impulse_points += floor(ease_sineOut(0, 20, abs(stock_diff_max), 3));
else if (stock_diff_max < 0)
	impulse_points -= floor(ease_sineIn(0, 30, abs(stock_diff_max), 3));

impulse_points *= sign(_points);

impulse_points = clamp(impulse_points, 30, 130)

impulse_points_max = impulse_points;


#define lose_impulse_points(_points, _player_hit)
var self_stocks = get_player_stocks(player);
var target_max_stocks = get_player_stocks(_player_hit);

var stock_diff_max = self_stocks - target_max_stocks;
var diff = _points;

if (stock_diff_max > 0)
	diff -= 10 * abs(stock_diff_max);
else if (stock_diff_max < 0)
	diff -= 65 * abs(stock_diff_max);
	
impulse_points -= min(30, diff);

#define array_cut(_array, _index)
var _array_cut = array_create(array_length_1d(_array)-1);
var j = 0;
for (var i = 0; i < array_length_1d(_array); i++) {
	if i != _index {
		_array_cut[@j] = _array[i];
		j++;
	}
}
return _array_cut;
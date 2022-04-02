if (!_init) {
    block_type = spawn_variables[0]; //0 = brick block, 1 = qblock, 2 = block, 3 = noteblock, [4, [xx...], y] = Switch with actions xx.., scene y
    item_spawn = spawn_variables[1]; //0 = coin, 1 = 10 coin, 2 = mushroom, 3 = star, 4 = coin, [5, x] = enemy with X id, 6 = fire flower,
    invisible = spawn_variables[2];
	move_to_variables = spawn_variables[3]; //[xoff, yoff, w, h]
	fake_block = spawn_variables[4];
	collided = noone;
	if (is_array(move_to_variables)) {
		move_s = [x, y];
		move_e = [x + move_to_variables[0], y + move_to_variables[1]];
	}
	if (!is_array(block_type)) {
		block_type = [block_type, 0];
	}
	if (!is_array(item_spawn)) {
		item_spawn = [item_spawn, 0];
	}
	action_index = 0;
    visible = true;
    _init = 1;
    disable_movement = true;
	depth = 0;
	exit;
}
img = 0
if (block_type[0] != 2 && block_type[0] != 4)
	img = get_gameplay_time() % 0.05;
	
current_sprite_set = find_room_type();
var num_frames = sprite_get_number(spr_index) / num_sprite_sets;
var offset = num_frames * current_sprite_set;
img_index = (get_gameplay_time() * 0.05) % num_frames + offset;
if (block_type[0] == 2) {
	img_index = offset;
}


state_timer++;

if (state == 0) {
	switch(block_type[0]) {
	    case 0:
	        spr_index = sprite_get("brickblock");
	    break;
	    case 1:
	        spr_index = sprite_get("qblock");
	    break;
	    case 2:
	        spr_index = sprite_get("block");
	    break;
	    case 3:
			if (is_array(block_type[1]))
	        	spr_index = sprite_get("noteblock");
	        else
	        	spr_index = sprite_get("noteblock2");
	    break;
	    case 4:
	        spr_index = sprite_get("switchblock");
	        img_index = action_index;
	    break;
	}
	if (("move_s" in self) && !moved) {
		var player_near = false;
		with (oPlayer) {
			if (state != PS_DEAD && abs((other.x + 16) - x) < other.move_to_variables[2] && abs((other.y + 16) - y) < other.move_to_variables[3]) {
				player_near = true;
				break;
			}
		}
		if (player_near && state == 0) {
			state = 2;
			state_timer = 0;
			moved = true;
		}
	}
	if hit_time >= 0
		hit_time++;
	visible = !invisible;
}
//if (distance_to_object(oPlayer) > 32 && state != 1) exit;
switch (state) {
	case 0:
		visible = !invisible;
		mask_index = sprite_get("brickblock");
	    if (can_break()) {
	        state = 1;
	        state_timer = 0;
	        invisible = false;
	        sound_stop(sound_get("sfx_bump"));
	        sound_play(sound_get("sfx_bump"));
	    }
	    
	    if (block_type[0] == 3) {
	    	if (player_on_top() && (!invisible || (block_type[0] == 3 || is_array(block_type[1])))) {
		        state = 3;
		        state_timer = 0;
		        invisible = false;
		        sound_stop(sound_get("sfx_bump"));
		        sound_play(sound_get("sfx_bump"));
	    	}
	    }
		
		mask_index = visible ? sprite_get("brickblock") : asset_get("empty_sprite");
		
		if (fake_block && player_on_top()) {
			sound_stop(sound_get("sfx_break"));
	        sound_play(sound_get("sfx_break"));
	        var brick1 = instance_create(round(x), round(y), "obj_stage_article", 18)
	        brick1.sprite_index = sprite_get("brickblock_break");
	        brick1.image_index = 0;
	        brick1.hsp = -2;
	        brick1.vsp = -4;
	        var brick2 = instance_create(round(x+16), round(y), "obj_stage_article", 18)
	        brick2.sprite_index = sprite_get("brickblock_break");
	        brick2.image_index = 1;
	        brick2.hsp = 2;
	        brick2.vsp = -4;
	        var brick3 = instance_create(round(x), round(y+16), "obj_stage_article", 18)
	        brick3.sprite_index = sprite_get("brickblock_break");
	        brick3.image_index = 2;
	        brick3.hsp = -4;
	        brick3.vsp = -2;
	        var brick4 = instance_create(round(x+16), round(y+16), "obj_stage_article", 18)
	        brick4.sprite_index = sprite_get("brickblock_break");
	        brick4.image_index = 3;
	        brick4.hsp = 4;
	        brick4.vsp = -2;
	        instance_destroy(id);
	        exit;
		}
		break;
		
	case 1:
		if (state_timer == 1) {
			var article = collision_nearest_enemy(x, y-4, 64)
			if (instance_exists(article) && place_meeting(x, y, article)) {
				with (article) {
					if (!can_be_grounded) continue;
					if (num == 6) {
						if (hitpoints_max <= 5 && invincible == 0) {
							percent += 5;
							kb_angle = 45;
							kb_power = 6;
						}
					}
					else if (num == 10) {
						if (item_id == 3) {
						    var brick3 = instance_create(round(x), round(y), "obj_stage_article", 18)
						    brick3.sprite_index = sprite_get("coin_get");
						    brick3.img_spd = 0.2;
						    brick3.vsp = -12;
						    brick3.timer_max = 45;
						    sound_stop(sound_get("sfx_coin"));
						    sound_play(sound_get("sfx_coin"));
						    add_coin(1);
						    instance_destroy(id);
						    continue;
						}
						else {
							vsp = -8;
						}
					}
				}
			}
		}
		
		if (block_type[0] == 0) {
			spr_index = sprite_get("brickblock");
		}
		else {
			spr_index = sprite_get("block");
			img_index = 0;
		}
	    if (state_timer < 4) {
	        draw_y = ease_linear(0, -8, state_timer, 4);
	    }
	    else if (state_timer >= 4 && state_timer < 8) {
	        draw_y = ease_linear(-8, 0, state_timer-4, 4);
	    }
	    else {
	        draw_y = 0;
	        break_block();
	        state = 0;
	        state_timer = 0;
	    }
		visible = true;
		mask_index = visible ? sprite_get("brickblock") : asset_get("empty_sprite");
	break;
	
	case 2:
		if (is_array(move_to_variables)) {
			x = ease_linear(move_s[0], move_e[0], state_timer, move_to_variables[4]);
			y = ease_linear(move_s[1], move_e[1], state_timer, move_to_variables[4]);
		}
		
		if (state_timer > move_to_variables[4]) {
			x = move_e[0];
			y = move_e[1];
			state = 0;
		}
		
		var player_under = collision_line(bbox_left, bbox_bottom+12, bbox_right, bbox_bottom+12, oPlayer, 0, 0);
		
		if (instance_exists(player_under)) {
			with (player_under) {
				if ("am_mario_health" not in self) continue;
				if (!free && am_mario_health >= 1) {
					am_mario_health = 0;
				}
			}
		}
	break;
	//Bounce
	case 3:
	    if (state_timer < 4) {
	        draw_y = ease_linear(0, 8, state_timer, 4);
	    }
	    else if (state_timer >= 4 && state_timer < 8) {
	        draw_y = ease_linear(8, 0, state_timer-4, 4);
	    }
	    else {
	        draw_y = 0;
	        if (!is_array(block_type[1]))
	        	standard_stomp(player_last_hit);
	        else
	        	player_warp(player_last_hit);
	        state = 0;
	        state_timer = 0;
	    }
		visible = true;
	break;
}

#define can_break()
if (block_type[0] == 2 || (block_type[0] == 3 && invisible)) return false;
var result = false
if (distance_to_object(oPlayer) > 64) return false;
var player_under = collision_rectangle(bbox_left, bbox_bottom-4, bbox_right, bbox_bottom+4, oPlayer, 0, 0);

if (instance_exists(player_under)) {
    with (player_under) {
        if (!free) continue;
        if (vsp > 0 && !other.visible) continue;
		if !collision_rectangle(bbox_left, bbox_top + 4, bbox_right, bbox_top - 6, other.id, 0, 0) continue;
		if ("am_mario_health" in self) && am_mario_state == 0
	        if (state != PS_DEAD || state != PS_RESPAWN) {
	            vsp = 0;
	            other.player_last_hit = id;
	            result = true;
	        }
    }
}
return result;

#define player_on_top()
var result = false
if (distance_to_object(oPlayer) > 64) return false;
var player_under = collision_rectangle(bbox_left, bbox_top-4, bbox_right, bbox_top, oPlayer, 0, 0);

if (instance_exists(player_under)) {
    with (player_under) {
		if ("am_mario_health" in self) && am_mario_state == 0 && vsp >= 0 && y <= other.y
	        if (state != PS_DEAD || state != PS_RESPAWN) {
	            other.player_last_hit = id;
	            result = true;
	        }
    }
}
return result;

#define break_block() 
if (item_spawn[0] >= 0) {
	if (item_spawn[0] == 1) {
		if (hit_time < 0) {
			hit_time = 0;
		}
		else {
			hit_time++;
			if (hit_time >= hit_time_max) {
    			block_type[0] = 2;
			}
		}
	}
	else {
		if (block_type[0] != 3 && block_type[0] != 4)
			block_type[0] = 2;
	}
	spawn_item();
}
else {
	if (block_type[0] == 4) {
		action_index = (action_index + 1) % array_length(block_type[1]);
		if (block_type[2] > 0) {
    		array_push(obj_stage_main.action_manager.action_queue, [obj_stage_main.action_manager.room_id, block_type[2], block_type[1][action_index]]);
		}
	}
	else if (block_type[0] != 3) {
		if (!instance_exists(player_last_hit) || (player_last_hit.am_mario_health > 1 || obj_stage_main.am_mario_syobon)) {
	        sound_stop(sound_get("sfx_break"));
	        sound_play(sound_get("sfx_break"));
	        var brick1 = instance_create(round(x), round(y), "obj_stage_article", 18)
	        brick1.sprite_index = sprite_get("brickblock_break");
	        brick1.image_index = 0;
	        brick1.hsp = -2;
	        brick1.vsp = -4;
	        var brick2 = instance_create(round(x+16), round(y), "obj_stage_article", 18)
	        brick2.sprite_index = sprite_get("brickblock_break");
	        brick2.image_index = 1;
	        brick2.hsp = 2;
	        brick2.vsp = -4;
	        var brick3 = instance_create(round(x), round(y+16), "obj_stage_article", 18)
	        brick3.sprite_index = sprite_get("brickblock_break");
	        brick3.image_index = 2;
	        brick3.hsp = -4;
	        brick3.vsp = -2;
	        var brick4 = instance_create(round(x+16), round(y+16), "obj_stage_article", 18)
	        brick4.sprite_index = sprite_get("brickblock_break");
	        brick4.image_index = 3;
	        brick4.hsp = 4;
	        brick4.vsp = -2;
	        instance_destroy(id);
		}
	}
}
#define spawn_item()

if (item_spawn[0] <= 1) {
    var brick3 = instance_create(round(x), round(y), "obj_stage_article", 18)
    brick3.sprite_index = sprite_get("coin_get");
    brick3.img_spd = 0.2;
    brick3.vsp = -12;
    brick3.timer_max = 45;
    sound_stop(sound_get("sfx_coin"));
    sound_play(sound_get("sfx_coin"));
    add_coin(1);
}
else {
	var players_alive = 0
	
	if (obj_stage_main.player_count <= 1) {
		var player_last = noone;
		with oPlayer { //Mario death
			if ("am_mario_health" in self) {
				if (!("temp_level" in self) || temp_level == 0)
					if (am_mario_state != 1 && state != PS_DEAD && state != PS_RESPAWN) {
						if (player_last == noone) {
							player_last = id;
							break;
						}
					}
			}
		}
		if (item_spawn[0] == 2)
			item_out_block(player_last.am_mario_health <= 1 ? 0 : 1, true, 0);
		else if (item_spawn[0] == 5) {
			enemy_out_block(item_spawn[1]);
		}
		else
			item_out_block(item_spawn[0], true, 0);
	    sound_stop(sound_get("sfx_item"));
	    sound_play(sound_get("sfx_item"));
	}
	else {
		var player_small = 0;
		with oPlayer { //Mario death
			if ("am_mario_health" in self) {
				if (!("temp_level" in self) || temp_level == 0)
					if (am_mario_state != 1 && state != PS_DEAD && state != PS_RESPAWN) {
							if (am_mario_health <= 1)
								player_small ++;
						}
					}
		}
		var n = player_small;
		if (item_spawn[0] == 7) {
			item_out_block(item_spawn[0], true, 0);
		}
		else if (item_spawn[0] == 5) {
			enemy_out_block(item_spawn[1]);
		}
		else {
			repeat (obj_stage_main.player_count) {
				if (item_spawn[0] == 2)
					item_out_block(n <= player_small ? 0 : 1, false, n);
				else
					item_out_block(item_spawn[0], false, n);
				n++;
			}
		}
	    sound_stop(sound_get("sfx_item"));
	    sound_play(sound_get("sfx_item"));
	}
	hit = true;
}

#define item_out_block(_item, _out_block, _i)
var _art = instance_create(floor(x + 16),floor(y),"obj_stage_article", 10);
if (_item == 1 || _item == 6)
	_art.spawn_variables = [1, sprite_get("flower"), 2, 1, 2, ""]
else if (_item == 3)
	_art.spawn_variables = [2, sprite_get("star"), 2, 1, 1, ""]
else if (_item == 4)
	_art.spawn_variables = [4, sprite_get("mushroom_life"), 2, 1, 1, ""]
else if (_item == 7)
	_art.spawn_variables = [5, sprite_get("p_switch"), 0, 0, -1, ""]
else
	_art.spawn_variables = [0, sprite_get("mushroom"), 2, 1, 2, ""]
_art.depth = depth + 1;
_art.og_depth = depth + 1;
_art.room_manager = room_manager;
_art.debug = obj_stage_main.debug;
_art.dont_despawn = true;
_art.out_of_block = _out_block;
if (!_out_block) {
	_art.hsp = -4 + random_func(_i, 8, false);
	_art.vsp = -8;
	_art.dir = sign(_art.hsp);
	_art.landed = false;
}
_art.custom_args = item_spawn[1];

#define enemy_out_block(enemy)
var _art = instance_create(floor(x + 16),floor(y),"obj_stage_article", 6);
_art.spawn_variables = [enemy, 0, 0, [], 0, 0, 0, 0]
_art.depth = depth + 1;
_art.og_depth = depth + 1;
_art.room_manager = room_manager;
_art.debug = obj_stage_main.debug;
_art.out_of_block = true;
_art.dont_despawn = true;
_art.y -= 16;

#define add_coin(_inc)
obj_stage_main.am_mario_coins += _inc;
if (obj_stage_main.am_mario_coins >= 100) {
	sound_stop(sound_get("sfx_1up"));
	sound_play(sound_get("sfx_1up"));
	with (oPlayer) {
		am_mario_lives ++;
	}
	obj_stage_main.am_mario_coins = 0;
}
#define find_room_type() 
for (var i = 0; i < array_length(obj_stage_main.am_mario_ug_rooms); i++) {
	if (obj_stage_main.action_manager.room_id == obj_stage_main.am_mario_ug_rooms[i])
		return 1;
}
for (var i = 0; i < array_length(obj_stage_main.am_mario_ca_rooms); i++) {
	if (obj_stage_main.action_manager.room_id  == obj_stage_main.am_mario_ca_rooms[i])
		return 2;
}
return 0;


#define standard_stomp(_player)
_player.vsp = _player.jump_down ? -12 : -6;

#define player_warp(_player)
if _player.state != PS_DEAD && ("am_mario_state" in _player) && _player.am_mario_state == 0 {
	with (obj_stage_main) sound_play(sound_get("sfx_vine"),0, other);
	if (is_array(block_type[1]))
	    _player.am_mario_warp_vars = [block_type[1][0], block_type[1][1], block_type[1][2], block_type[1][3]];
	else
	    _player.am_mario_warp_vars = block_type[1];
	clear_button_buffer(PC_JUMP_PRESSED)
    _player.am_mario_warp_pos_s = [_player.x, _player.y]
    _player.am_mario_warp_pos_e = [_player.x, -272]
	with (oPlayer) am_mario_warp_out = -1;
	_player.am_mario_state = 4;
	_player.am_mario_state_timer = 0;
}
else standard_stomp(_player);

#define collision_nearest_enemy(_x,_y, max_dist)

with obj_stage_article if (num == 6 || num == 10) && abs(x-_x) < max_dist && abs(y-_y) < max_dist return id

return noone;
exist_timer += 0.1;
if type exist_timer -= 0.05;

if abs(exist_timer - round(exist_timer)) == 0{
	var loop_amt = 4;
	var last = 16; //actually is AFTER the last frame
	
	if (exist_timer > last - loop_amt){
		y += 32;
	}
	
	if (exist_timer >= last){
		exist_timer -= loop_amt;
	}
}

image_index = exist_timer;

if y > room_height{
	if "lava_sound" in self sound_stop(lava_sound);
	instance_destroy();
	exit;
}



with(asset_get("obj_article2")){
	if ("muno_char_id" in player_id && player_id.muno_char_id == other.player_id.muno_char_id && type != other.type){
		
		var real_y = y;
		switch(floor(exist_timer)){
			case 1:
			case 2:
			case 3:
			case 4:
				break;
			case 5:
			case 6:
			case 7:
			case 8:
				real_y += 32;
				break;
			case 9:
				real_y += 40;
				break;
			case 10:
				real_y += 48;
				break;
			case 11:
				real_y += 64;
				break;
			default:
				real_y += 72;
				
		}
		
		if (y > other.y && "has_cobbled" not in self && place_meeting(x, y, other)){
			exist_timer = max(exist_timer, 5);
			has_cobbled = true;
			other.has_cobbled = true;
			sound_play(player_id.sfx_minecraft_singe);
            var new_b = instance_create(x, real_y, "obj_article_platform");
            new_b.spr_dir = 1;
            new_b.type = 2;
            new_b.image_index = 2;
            new_b.dont_drop_item = true;
		}
	}
}



switch(type){
	case 0: //water
		
		with oPlayer{
			
			var has_touched = false;
			var water_obj = other;
			if place_meeting(x, y, water_obj) has_touched = true;
			
			waterCheck(has_touched && !activated_kill_effect, other.player_id, false);
		}
		
		with asset_get("hit_fx_obj") if ("steve_manip_id" in self){
			
			if ("steve_water_check_frame" not in self){
				steve_water_check_frame = 0;
				steve_water_last_frame = 0;
			}
			
			switch(type){
				case 4: //Block pickup
					var tou = place_meeting(x, y, other);
					if tou && ("has_landed" in self) has_landed = false;
					waterCheck(tou, other.player_id, true)
					break;
					
			}
		}
		
		with pHitBox{
			if "muno_char_id" in player_id && player_id.muno_char_id == other.player_id.muno_char_id && type == 2{
				waterCheck(place_meeting(x,y,other), player_id, true);
			}
		}
		
		with player_id water_cooldown = water_cooldown_max;
		
		with asset_get("obj_article1"){
			if player_id.muno_char_id == other.player_id.muno_char_id && place_meeting(x, y, other){
				sound_play(player_id.sfx_minecraft_singe);
				instance_destroy(self);
			}
		}
		
		with asset_get("obj_article3"){
			if player_id.muno_char_id == other.player_id.muno_char_id{
				waterCheck(place_meeting(x,y,other), player_id, true);
			}
		}
		
		break;
		
	case 1: //lava
		
		if "lava_sound" not in self lava_sound = sound_play(player_id.sfx_minecraft_lava);
		
		with oPlayer{
			
			var has_touched = false;
			var lava_obj = other;
			with hurtboxID if place_meeting(x, y, lava_obj) has_touched = true;
			
			lavaCheck(has_touched && !activated_kill_effect, other.player_id);
		}
		
		with pHitBox{
			if place_meeting(x, y, other) && player_id.muno_char_id == other.player_id.muno_char_id && type == 2 && attack == AT_FSTRONG && "flaming" in self && !flaming{
				flaming = true;
				sound_play(player_id.sfx_minecraft_singe);
			}
		}
		
		with asset_get("obj_article3"){
			if player_id.muno_char_id == other.player_id.muno_char_id && place_meeting(x, y, other){
				cycle = cycle_max;
				cycle_timer = cycle_timer_max;
			}
		}
		
		with player_id if has_rune("H") water_cooldown = water_cooldown_max;
		
		break;
}



#define waterCheck(has_touched, steve, quiet)

if ("steve_water_check_frame" not in self){
	steve_water_check_frame = 0;
	steve_water_last_frame = 0;
}
			
if (steve_water_check_frame != get_gameplay_time()){
	if has_touched{
		if !(object_index == oPlayer && hitpause){ //every frame effect
			vsp -= ("gravity_speed" in self) ? gravity_speed : 0.5;
			if vsp > -5 vsp--;
			burn_timer = 1000;
			if (object_index == pHitBox && "flaming" in self && flaming){
				flaming = false;
				sound_play(steve.sfx_minecraft_singe);
			}
			free = true;
		}
		
		if steve_water_last_frame < get_gameplay_time() - 1{ //enter effect
			sound_play(steve.sfx_minecraft_splash[clamp(random_func(0, 2, true), 0, 1)], 0, noone, quiet ? 0.5 : 1);
			spawnVfx(2, steve);
		}
		steve_water_last_frame = get_gameplay_time();
	}
	else{
		if steve_water_last_frame == get_gameplay_time() - 1{ //exit effect
			sound_play(steve.sfx_minecraft_swim[clamp(random_func(0, 3, true), 0, 2)], 0, noone, quiet ? 0.5 : 1);
			spawnVfx(2, steve);
		}
	}
		
	steve_water_check_frame = get_gameplay_time();
}



#define lavaCheck(has_touched, steve)

if ("steve_lava_check_frame" not in self){
	steve_lava_check_frame = 0;
	steve_lava_last_frame = 0;
}
			
if (steve_lava_check_frame != get_gameplay_time()){
	if has_touched{
		
		if steve_lava_last_frame < get_gameplay_time() - 10{ //enter effect
			with steve var hb = create_hitbox(AT_DSPECIAL, 1, other.x, other.y - 10);
			hb.can_hit_self = true;
			if ("muno_char_id" in self && muno_char_id == steve.muno_char_id && attacking && attack == AT_NAIR && soft_armor) super_armor = true;
		}
		steve_lava_last_frame = get_gameplay_time();
	}
		
	steve_lava_check_frame = get_gameplay_time();
}



#define spawnVfx(count, steve)

for (i = 0; i < count; i++){
	var hfx_x = x + random_func(00 + i, 20, true) - 10;
	var hfx_y = y + random_func(10 + i, 20, true);
	var hfx_v = random_func(20 + i, 1, true) - 4;
	var hfx_h = random_func(30 + i, 4, true);
	hfx_h *= (i % 2) ? -1 : 1;
	var hfx_d = depth - 1;
	var hfx_a = random_func(40 + i, 40, true) - 20;
	
	with steve{
		var hfx = spawn_hit_fx(hfx_x, hfx_y, vfx_splash);
		hfx.hsp = hfx_h;
		hfx.vsp = hfx_v;
		hfx.depth = hfx_d;
		hfx.parent_y = other.y;
		hfx.asp = hfx_a;
		
		hfx.steve_manip_id = self;
		hfx.type = 3;
		hfx.num = other.i;
	}
}
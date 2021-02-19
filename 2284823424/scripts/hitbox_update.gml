var fast_gr = player_id.fast_graphics;



if hitpause_timer{
	hitpause_timer--;
	in_hitpause = true;
}
else{
	in_hitpause = false;
}



if sprite_index != asset_get("empty_sprite") && sprite_index != player_id.spr_lingering_potion_blast visible = !(hitbox_timer > length - 30 && hitbox_timer % 10 < 5);



if (attack == AT_FSTRONG){
	if flaming{
		image_index = hitbox_timer / 5;
		sprite_index = player_id.spr_fstrong_arrow_fire;
		effect = 1;
	}
	else{
		image_index = 0;
		sprite_index = player_id.spr_fstrong_arrow;
		effect = 0;
	}
	
	if free proj_angle = point_direction(0, 0, hsp, vsp) - 180 * (spr_dir == -1);
	vsp += ease_linear(1, 6, clamp(round(vsp), 0, 10), 10) / 10;
	hsp -= ease_linear(0, 1, clamp(round(vsp), 0, 10), 10) * sign(hsp) / 5;
	
	if (crit && hitbox_timer % 5 == 1) && !fast_gr{
		var hfx = spawn_hit_fx(x, y, player_id.vfx_crit);
		hfx.vsp = vsp * 0.2; //vsp = -1 if gravity
		hfx.hsp = hsp * 0.2;
		
		hfx.steve_manip_id = player_id;
		hfx.type = 0;
		hfx.depth = depth - 1;
		hfx.num = 0;
		hfx.hit_length = 100;
		
		hfx.ignore_gravity = true;
	}
	
	if ("should_die" in self){
		instance_destroy();
		exit;
	}
	
	else if ((position_meeting(x, y, asset_get("par_jumpthrough")) && !position_meeting(x, y - vsp, asset_get("par_jumpthrough")) && vsp > 0) || place_meeting(x, y, asset_get("par_block"))){
		var vfx = spawn_hit_fx(x, y, flaming ? player_id.vfx_arrow_fire : player_id.vfx_arrow);
		vfx.steve_manip_id = player_id;
		vfx.type = 2;
		vfx.draw_angle = proj_angle;
		
		sound_play(player_id.sfx_minecraft_bow_hit[clamp(random_func(0, 4, true), 0, 3) + 1]);
		should_die = true;
		hsp = 0;
		vsp = 0;
		
		if flaming && !free{
			var hbox = create_hitbox(AT_FSPECIAL, 1, x, y - 6);
			hbox.hsp = 0;
			hbox.vsp = 10;
		}
	}
	
	else if dieOffscreen() exit;
}



if (attack == AT_USPECIAL && hbox_num == 2){ //Anvil
	if hitpause_timer{
		hitpause_timer--;
		in_hitpause = true;
	}
	else{
		vsp += 0.5;
		vsp = min(vsp, 14);
		in_hitpause = false;
		
		if has_rune("O") vsp -= 1;
	}
	
	if (place_meeting(x, y + vsp, asset_get("par_block"))){
		grounds = 0;
	}
	
	if place_meeting(x, y + 1, asset_get("par_block")){
		with player_id sound_play(block_datas[BL_ANVIL].sfx);
		if !player_id.phone_playtest && player == orig_player {
	        var new_b = instance_create(round(x), round(y + 2), "obj_article_platform");
	        new_b.spr_dir = 1;
	        new_b.type = 6;
	        new_b.image_index = 6;
		}
        instance_destroy();
        exit;
	}
	
	if dieOffscreen() exit;
}



if (attack == AT_FSPECIAL){
	if free proj_angle = point_direction(0, 0, hsp, vsp) - 180 * (spr_dir == -1);
	else{
		if player == orig_player instance_create(x, y + 4, "obj_article1");
		instance_destroy();
		exit;
	}
}



if (attack == AT_NTHROW){
	switch(hbox_num){
		
		case 2: //Ender pearl
			if !(hitbox_timer % 5) && !fast_gr{
				var hfx = spawn_hit_fx(x, y, player_id.vfx_ender);
				hfx.hsp = hsp * 0.1;
				hfx.vsp = vsp * 0.1;
				hfx.depth = depth + 1;
				
				hfx.steve_manip_id = player_id;
				hfx.type = 0;
				hfx.num = 0;
				
				hfx.go_up = 0.25;
				hfx.ignore_gravity = true;
			}
			
			var ground = place_meeting(x, y, asset_get("par_block"));
			var plat = place_meeting(x, y, asset_get("par_jumpthrough")) && !place_meeting(x, y - vsp, asset_get("par_jumpthrough")) && vsp > 0;
			if ground || plat{
				player_id.pearled = true;
				player_id.pearl_x = x;
				player_id.pearl_y = y;
				instance_destroy();
				exit;
			}
			
			dieOffscreen();
			break;
			
		case 3: //Eye of ender
			if ("inited" not in self){
				inited = true;
				hsp = (10 + 5 * has_rune("O")) * spr_dir;
			}
			
			if !has_rune("O"){
				x = clamp(x, 32, room_width - 32);
				y = max(y, 64);
			}
			
			if (hitbox_timer > length - 40){
				hsp *= 0.8;
				vsp *= 0.8;
				if (hitbox_timer == length - 39 && "sounded" not in self){
					sound_play(player_id.sfx_minecraft_teleport2);
					sounded = true;
				}
			}
			else{
				vsp -= 0.25;
				hsp -= 0.05 * sign(hsp);
				if !(hitbox_timer % 10){
					for (var i = 0; i < 20; i++){
					    can_hit[i] = 1;
					}
				}
				if ("target" in self && target.state_cat == SC_HITSTUN){
					var amt = 0.5;
					target.x = lerp(target.x, x, amt);
					target.y = lerp(target.y, y + target.char_height / 2, amt);
				}
				if !(hitbox_timer % 5) && !fast_gr{
					var hfx = spawn_hit_fx(x, y, player_id.vfx_ender);
					hfx.hsp = hsp * 0.1;
					hfx.vsp = vsp * 0.1;
					hfx.depth = depth + 1;
					
					hfx.steve_manip_id = player_id;
					hfx.type = 0;
					hfx.num = 0;
					
					hfx.go_up = 0.25;
					hfx.ignore_gravity = true;
				}
			}
			break;
		
		case 4: //Splash Potion
			if !(hitbox_timer % 5) && !fast_gr{
				var hfx = spawn_hit_fx(x, y, player_id.vfx_potion_bubble_harming);
				hfx.hsp = hsp * 0.1;
				hfx.vsp = vsp * 0.1;
				hfx.depth = depth + 1;
				
				hfx.steve_manip_id = player_id;
				hfx.type = 0;
				hfx.num = 0;
				
				hfx.go_up = 0.25;
				hfx.ignore_gravity = true;
			}
			
			var ground = place_meeting(x, y, asset_get("par_block"));
			var plat = place_meeting(x, y, asset_get("par_jumpthrough")) && !place_meeting(x, y - vsp, asset_get("par_jumpthrough")) && vsp > 0;
			if ground || plat || has_hit{
				sound_play(player_id.sfx_minecraft_glass);
				spawnVfx(4, player_id.vfx_potion_glass, 0, 0, 0);
				spawnCloudVfx(10, 0, 0, player_id.vfx_potion_bubble_harming);
				spawn_hit_fx(x, y, player_id.vfx_splash_potion_blast);
				var hbox = create_hitbox(AT_NTHROW, 5, x, y - 40);
				if was_parried hbox.can_hit_self = true;
				instance_destroy();
				exit;
			}
			break;
		
		case 6: //Lingering Potion
			if !(hitbox_timer % 5) && !fast_gr{
				var hfx = spawn_hit_fx(x, y, player_id.vfx_potion_bubble_poison);
				hfx.hsp = hsp * 0.1;
				hfx.vsp = vsp * 0.1;
				hfx.depth = depth + 1;
				
				hfx.steve_manip_id = player_id;
				hfx.type = 0;
				hfx.num = 0;
				
				hfx.go_up = 0.25;
				hfx.ignore_gravity = true;
			}
			
			var ground = place_meeting(x, y, asset_get("par_block"));
			var plat = place_meeting(x, y, asset_get("par_jumpthrough")) && !place_meeting(x, y - vsp, asset_get("par_jumpthrough")) && vsp > 0;
			if ground || plat || has_hit{
				sound_play(player_id.sfx_minecraft_glass);
				spawnVfx(4, player_id.vfx_potion_glass, 0, 0, 0);
				spawnCloudVfx(10, 0, 0, player_id.vfx_potion_bubble_poison);
				var hbox = create_hitbox(AT_NTHROW, 7, x, y - 16);
				if was_parried hbox.can_hit_self = true;
				hbox.num = 0;
				instance_destroy();
				exit;
			}
			break;
			
		case 7: //Lingering cloud
			if (hitbox_timer == length - 4){
				spawnCloudVfx(10, 0, 20, player_id.vfx_potion_bubble_poison);
				var hbox = create_hitbox(AT_NTHROW, num < (has_rune("O") ? 7 : 3) ? 7 : 8, x, y);
				hbox.can_hit_self = can_hit_self;
				hbox.num = num + 1;
				hbox.player = player;
			}
			break;
		
		case 9: //Bell
			if (abs(hsp) && vsp > 1){
				hsp = 0;
				vsp = 3;
			}
			if vsp > 0 && place_meeting(x, y, asset_get("par_block")){
				if has_rune("O") && !has_hit{
					var hbox = create_hitbox(attack, hbox_num, x, y);
					hbox.spr_dir = -spr_dir;
					hbox.hsp = abs(hbox.hsp) * hbox.spr_dir;
					instance_destroy();
					exit;
				}
				vsp = -7;
				hitbox_timer = max(hitbox_timer, length - 60);
			}
			if (vsp > 0){
				proj_angle -= angle_difference(proj_angle, 0) * 0.5;
			}
			else{
				proj_angle += 25 * spr_dir;
			}
			break;
	}
}



// collision_sprite = sprite_index;



#define spawnVfx(count, vfx_type, x_off, y_off, behind)

with player_id if fast_graphics return;

for (i = 0; i < count; i++){
	var hfx_x = x + x_off + random_func(00 + i, 20, true) - 10;
	var hfx_y = y + y_off + random_func(10 + i, 20, true);
	var hfx_v = random_func(20 + i, 1, true) - 4;
	var hfx_h = random_func(30 + i, 4, true);
	hfx_h *= (i % 2) ? -1 : 1;
	var hfx_d = depth + (behind ? 1 : -1);
	var hfx_a = random_func(40 + i, 40, true) - 20;
	
	var hfx = spawn_hit_fx(hfx_x, hfx_y, vfx_type);
	hfx.hsp = hfx_h;
	hfx.vsp = hfx_v;
	hfx.depth = hfx_d;
	hfx.parent_y = y + y_off;
	hfx.asp = hfx_a;
	
	hfx.steve_manip_id = player_id;
	hfx.type = 3;
	hfx.num = i;
}



#define spawnCloudVfx(count, x_off, y_off, vfx)

with player_id if fast_graphics return;

for (i = 0; i < count; i++){
	var hfx_x = x + random_func(00 + i, 20, true) - 10 + x_off * spr_dir;
	var hfx_y = y - random_func(10 + i, 20, true) + y_off;
	var hfx_v = random_func(20 + i, 8, true) - 6;
	var hfx_h = random_func(30 + i, 4, true);
	hfx_h *= (i % 2) ? -1 : 1;
	
	hfx_v *= 1;
	hfx_h *= 3;
	
	var hfx_d = depth + 1;
	var hfx_a = random_func(40 + i, 40, true) - 20;

	var hfx = spawn_hit_fx(hfx_x, hfx_y, vfx);
	hfx.hsp = hfx_h;
	hfx.vsp = hfx_v;
	hfx.depth = hfx_d;
	hfx.parent_y = y;
	hfx.asp = hfx_a;
	
	hfx.steve_manip_id = player_id;
	hfx.type = 0;
	hfx.num = i - 2;
	
	hfx.go_up = 0.25;
	hfx.ignore_gravity = true;
}



#define dieOffscreen

if (y < player_id.blastzone_t || x != clamp(x, player_id.blastzone_l, player_id.blastzone_r)){
	instance_destroy();
	return 1;
}
return 0;
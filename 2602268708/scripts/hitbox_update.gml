//Updating hitboxes

switch (attack) {
case AT_FSTRONG:

//print_debug(string(hbox_num) +string(" - ") +string(in_hitpause));
//print_debug(string(hbox_num) +string(" - ") +string(hitpause_timer));

if hbox_num = 1{
    if (hitbox_timer > 15){ grav = 0.9; }
	
	//HITPAUSESESES
	if eergh_hitpause > 0 {
        in_hitpause = true;
        eergh_hitpause--;
    } else {
        in_hitpause = false;
    }
	
	//ALL THAT FUNKY STUFF
	switch (hitbox_timer) {
	    case 7:
	        vsp = 0;
	    break;
		case 15:
		    if !in_hitpause {
	            hitbox_slam = create_hitbox(AT_FSTRONG, 4, x+(is_big? 100:50) * spr_dir, y+(is_big? 55:70)); grav = 0.9;
			    hitbox_slam.owner = self;
			}
	    break;
	    case 21:
	        if free && !in_hitpause{
			    player_id.move_cooldown[AT_FSTRONG] = 40;
			    hitbox_fall = create_hitbox(AT_FSTRONG, 3, x+(is_big? 100:50) * spr_dir, y+(is_big? 60:80)); grav = 0.9;
				hitbox_fall.owner = self;
			}
	    break;
	
	}
	
    if (hitbox_timer < 20){
	if (destroyed){ destroyed = false; }
	} else if (hitbox_timer > 20){
	
	    if free {
	        image_index = 4;
	    } else if !free {
		    if image_index = 4.2 && !in_hitpause {
		       sound_play(sound_get("sm64_slam"));
		       shake_camera( is_big? 12:6, is_big? 20:10 );
			        with player_id {
				        array_push(phone_dust_query, [other.x+(other.is_big? 160:80) * other.spr_dir, other.y+86, "dash_start", other.spr_dir * -1]);
					}
			   hsp = 0;
			   hitbox_launch = create_hitbox(AT_FSTRONG, 2, x+(is_big? 100:50) * spr_dir, y+(is_big? 60:80));
		       hitbox_launch.owner = self;
			}
			img_spd = 0.5;
			if image_index >= 5.5 {
			    destroyed = true;
			}
			
	    }
	}
	if destroyed {
		sound_play(sound_get("sm64_break"));
		var fxlol = spawn_hit_fx( x, y, player_id.whomp_explode );
		fxlol.spr_dir = spr_dir;
	}
} else {

//failsafe
if !instance_exists(owner){
length = 0;
}

	in_hitpause = owner.in_hitpause;
	    if hbox_num = 3 {
		    x = owner.x +(owner.is_big? 100:50) * owner.spr_dir;
			y = owner.y+ owner.vsp +(owner.is_big? 60:80);
			if !owner.free {
			    length = 0;
				hit_priority = 0;
			}
		}
}
break;

case AT_DSTRONG:

if (hbox_num == 3){
    
	//HITPAUSESESESESES (plural)
	if eergh_hitpause > 0 {
        in_hitpause = true;
        eergh_hitpause--;
    } else {
        in_hitpause = false;
    }
	
	//eergh
	
        if (hitbox_timer == 1 && !in_hitpause){
		    sound_play(sound_get("thwomp"));
		    hitbox_fall = create_hitbox(AT_DSTRONG, 1, x, y+40);
		    hitbox_fall.owner = self;
		}
        if !free{
		    img_spd = 0.3;
		    if image_index = 0 && !in_hitpause {
				sound_play(sound_get("sm64_slam"));
		    	shake_camera( 6, 10 );
				hitbox_launch = create_hitbox(AT_DSTRONG, 4, x, y+60);
		        hitbox_launch.owner = self;
				hitbox_shock = create_hitbox(AT_DSTRONG, 2, x, y+70);
		        hitbox_shock.owner = self;
				    with player_id {
				        array_push(phone_dust_query, [other.x + 40, other.y+86, "dash_start", -1]);
						array_push(phone_dust_query, [other.x - 40, other.y+86, "dash_start", 1]);
					}
			}
		}
		
		if (image_index >= 2.7) {
		destroyed = true;
		}
		
        if (destroyed == true){ 
		sound_play(sound_get("sm64_break"));
		}
} else {

//failsafe
if !instance_exists(owner){
length = 0;
}

	in_hitpause = owner.in_hitpause;
	    if hbox_num = 1 {
		    x = owner.x //this shouldnt change but yknow, in case some kooky kids mess with the projectile
			y = owner.y+ owner.vsp+ 40;
			if !owner.free {
			    length = 0;
				hit_priority = 0;
			}
		}
		if hbox_num = 2 {
		    priority = !owner.has_hit;
		}
}

break;

case AT_FSPECIAL:

if hbox_num = 1 {
    
	with player_id {
		if !has_rune("O") {
			move_cooldown[AT_FSPECIAL] = 5;
		}
	}
	
    if y > get_stage_data(SD_BOTTOM_BLASTZONE_Y){
	    destroyed = true;
	}
	
	if (player_id.nspecial_grabbed_player == id){
	    with player_id {
			if !has_rune("O") {
				other.bounced = true;
			}
		}
		hit_priority = 0;
		++length;
		spr_dir = player_id.spr_dir;
		
		if (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR){

			var angle = 50;
			var knockback = 8; //get_hitbox_value(player_id.attack, 1, player_id.HG_BASE_KNOCKBACK)
			var throw_windtimer = 1;
			var throw_window = 1;
			with player_id sound_stop(sm64_fuse);
			switch(player_id.attack){
				case AT_DTHROW:
					angle = 270;
					throw_window = 2;
				break;
				case AT_UTHROW:
					angle = 100;
					throw_window = 2;
				break;
				case AT_EXTRA_1:
					angle = 135;
					throw_window = 2;
				break;
				default:
					angle = 50;
					throw_window = 2;
				break;
			}
				
			if (player_id.attack == AT_FTHROW || player_id.attack == AT_DTHROW || player_id.attack == AT_UTHROW || player_id.attack == AT_EXTRA_1) && (player_id.window == throw_window && player_id.window_timer == throw_windtimer){
				player_id.nspecial_grab_timer = 0;
				player_id.nspecial_grabbed_player = noone;
				
				with player_id {
				sound_play(sound_get("sm64_fuse_light"));
				sound_play(sm64_fuse, true, noone, 1, 1);
				}
				
				hsp = (knockback * cos(degtorad(angle)) * player_id.spr_dir);
				vsp = (-knockback * sin(degtorad(angle)));
				
				if hsp != 0 // correct face dir
					spr_dir = sign(hsp);
				
				with player_id if !has_rune("O") other.bounced = true;
			}
		}
	} else{
	    
		hit_priority = 1;
		
		if hitbox_timer%4 = 1 {
	        with player_id array_push(phone_dust_query, [other.x, (other.is_big? other.y-32 : other.y-4), "walk", other.spr_dir]);
		}
	
		if !(free){
			if (bounced == true) {
			    with player_id sound_stop(sound_get("sm64_fuse"));
				destroy_fx = destroy_fx_saved;
				destroyed = true;
			} else {
			    spawn_hit_fx( x, y, player_id.bomb_bounce );
				vsp = -5;
				hsp = 4 * spr_dir;
			    with player_id {
				    if has_rune("B") {
					    sound_play(sound_get("sm64_slam"));
					} else {
					    sound_play(sound_get("sm64_stomp"));
					}
				
				    if !has_rune("O") {
					    other.bounced = true;
					}
				}
			}
			if (destroyed == true) {
				with player_id sound_play(sound_get("sm64_blast"));
				hitb = create_hitbox( AT_FSPECIAL, 2, (is_big? x+10 *spr_dir : x+5 *spr_dir), (is_big? y-10 : y+10) );
				hitb.player = player;
				hitb.was_parried = was_parried;
				player_id.move_cooldown[AT_FSPECIAL] = 75;
			}
		}
		
		var chuck_distance = point_distance(player_id.x, player_id.y, x, y);
		if (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR){
			if (player_id.attack == AT_NSPECIAL) && player = orig_player && (chuck_distance <= player_id.grab_radius + 30 && player_id.nspecial_grabbed_player == noone) && (player_id.window <= 2){
				player_id.nspecial_grab_timer = player_id.nspecial_grab_max_time;
				player_id.nspecial_grabbed_player = id;
			}
		}
		if hitbox_timer <= 1 && player_id.fspeshold > 12 && player = orig_player {
		        player_id.nspecial_grab_timer = player_id.nspecial_grab_max_time;
				player_id.nspecial_grabbed_player = id;
				player_id.fspeshold = 0;
		}
	}
	
	//failsafe
	    if player != orig_player && player_id.nspecial_grabbed_player = id {
		    player_id.nspecial_grabbed_player = noone;
			priority = 1;
		}
	
} else if hbox_num = 2 {
    if hitbox_timer > 8 {
        hit_priority = 1;
	}
}
break;

case AT_TAUNT_2:
if hbox_num == 1 {
	depth = player_id.depth + 1;
	if (hitbox_timer == 50){
		hitbox_timer = 1;
	}
	if player_id.attack == AT_TAUNT_2 && player_id.state == PS_ATTACK_GROUND && player_id.state_timer = 0{
	destroyed = true;
	}
}
break;

case 40:
if !free {
destroyed = true;
sound_play(sound_get("sm64_break"));
}
break;

case AT_DSPECIAL:
if hbox_num == 1{
x = obj_article1.x + 10 * obj_article1.spr_dir;
y = obj_article1.y - 24;
}
break;

case 49:
destroyed = false;
if hitbox_timer <= 10 {
	draw_alpha = min(hitbox_timer * 0.1, 1);
} else {
	sprite_index = actual_sprite_index;
}
if get_gameplay_time() % w_ai_freq == 0 {
	w_ai_hue = (w_ai_hue + 2*w_ai_freq) % 256;
	w_ai_col = make_color_hsv(w_ai_hue, 255, 255);
	w_ai_cur = min(w_ai_cur + 1, w_ai_tot);
	w_ai_ind = (w_ai_ind + 1) % w_ai_tot;
	w_afterimages[w_ai_ind] = {
		sprite: actual_sprite_index,
		subimg: image_index,
		x: x,
		y: y,
		xscale: draw_xscale,
		yscale: draw_yscale,
		rot: proj_angle,
		alpha: draw_alpha
	}
}
break;

case AT_USTRONG:

    if hitbox_timer%4 = 1 {
	    with player_id spawn_hit_fx(other.x, other.y, starune);
	}
    if !free {
	    vsp = old_vsp*0.5*-1;
		sound_play(asset_get("sfx_oly_dspecial_armorhit"), false, noone, 0.5, 1);
	}
	old_vsp = vsp;
break;

}
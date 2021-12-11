//hitbox_update.gml

if (get_player_color(player) == 7){
	outline_color = [140, 81, 10];
	init_shader();
}

/*	
//DAttack
if (attack == AT_DATTACK){
	if (hbox_num == 3){
		blitzsteed_timer = blitzsteed_timer + 1;
		if (blitzsteed_timer >= 9){
			create_hitbox(AT_DATTACK, 7, x, y ); //lance
			create_hitbox(AT_DATTACK, 5, x, y ); //front wheel
			create_hitbox(AT_DATTACK, 4, x, y ); //head
			create_hitbox(AT_DATTACK, 6, x, y ); //back wheel
			spawn_hit_fx( x, y - 16, 301 );
			sound_play(asset_get("sfx_propeller_dagger_release"));
			sound_play(asset_get("sfx_blow_weak2"));
			blitzsteed_timer = 0;
		}
	}
}
*/

//NSpecial
if (attack == AT_NSPECIAL){
    if (hbox_num == 1){
    	if (player_id.move_cooldown[AT_NSPECIAL] < 2){ player_id.move_cooldown[AT_NSPECIAL]++; }
if (hitbox_timer == 1){
	jumpy = false;
	jumpytime = 0;
	turn = false; turntime = 0;
	turned = false; slapped = false;
	removerat_time = 0;
	wall_turn = false;
}
if (hitbox_timer >= 800){ hitbox_timer = 0; } //So it lives forever.
knight_distance = point_distance(player_id.x, player_id.y - player_id.char_height * 0.1, x, y);
if (turned == true && player_id.special_down && free){ removerat_time += 1; }
if (free && removerat_time >= 15){
	//If they're in the air and you press special
	//they should use this sprite w/ this speed
	sprite_index = sprite_get("rat_bombardier_disappear");
	image_speed = 0.9;
}
if (knight_distance <= 40 && player_id.attack == AT_FSPECIAL && player_id.window == 2 && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND)){
    //This is when he's bashing normally
    slapped = true;
    vsp = -5;
    hsp = 4 * spr_dir;
    spr_dir = player_id.spr_dir;
    grounds = 1; walls = 1;
    mask_index = asset_get("empty_sprite");
    collision_sprite = asset_get("empty_sprite");
    sprite_index = sprite_get("rat_bombardier_nobomb");
    player_id.window = 4;
    player_id.window_timer = 1;
    player_id.spin_hit = true;
    player_id.hitstop = 10; player_id.hitstop_full = 7; 
	shake_camera( 2, 6 );
	player_id.hitpause = true;
    create_hitbox(AT_NSPECIAL, 2, x, y);
	spawn_base_dust(x + (20 * spr_dir), y - 32, "wallland", spr_dir * -1); 
}
if (knight_distance <= 40 && player_id.attack == AT_DAIR && player_id.window == 2 && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND)){
    //This is when he's down bashing
    slapped = true;
    vsp = -5;
    hsp = 4 * spr_dir;
    spr_dir = player_id.spr_dir;
    grounds = 1; walls = 1;
    mask_index = asset_get("empty_sprite");
    collision_sprite = asset_get("empty_sprite");
    sprite_index = sprite_get("rat_bombardier_nobomb");
	player_id.attack = AT_FSPECIAL;
    player_id.window = 4;
    player_id.window_timer = 1;
    player_id.spin_hit = true;
    player_id.hitstop = 10; player_id.hitstop_full = 7; 
	player_id.which_bash = 1;
	shake_camera( 2, 6 );
	player_id.hitpause = true;
    create_hitbox(AT_NSPECIAL, 2, x, y);
	spawn_base_dust(x, y, "land"); 
}
if (knight_distance <= 40 && player_id.attack == AT_FSPECIAL && player_id.window == 8 && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND)){
    //This is when he's rolling
    slapped = true;
    vsp = -6;
    hsp = 5 * spr_dir;
    spr_dir = player_id.spr_dir;
    grounds = 1; walls = 1;
    mask_index = asset_get("empty_sprite");
    collision_sprite = asset_get("empty_sprite");
    sprite_index = sprite_get("rat_bombardier_nobomb");
    player_id.window = 9;
    player_id.window_timer = 1;
    create_hitbox(AT_NSPECIAL, 2, x, y);
}
if (knight_distance <= 40 && player_id.attack == AT_FSPECIAL && player_id.window == 6 && player_id.window_timer > 6 && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && sprite_index != sprite_get("rat_bombardier_nobomb")){
    //spinning
    slapped = true;
    vsp = -6;
    hsp = 5 * spr_dir;
    spr_dir = player_id.spr_dir;
    grounds = 1; walls = 1;
    mask_index = asset_get("empty_sprite");
    collision_sprite = asset_get("empty_sprite");
    sprite_index = sprite_get("rat_bombardier_nobomb");
	player_id.spin_hit = true;
	player_id.move_cooldown[AT_FSPECIAL] = 1;
    player_id.window = 5;
    player_id.window_timer = 1;
	player_id.hitstop = 10; player_id.hitstop_full = 7
	player_id.hitpause = true;
	player_id.which_bash = 2;
	shake_camera( 2, 6 );
	sound_play(sound_get("sfx_spin_rebound"));
	sound_play(sound_get("sfx_bomb_explode"));
	create_hitbox(AT_NSPECIAL, 3, x, y);
	spawn_hit_fx( x, y-20, player_id.bomb_explosion );
	spawn_base_dust(x, y, "djump"); 
}
if ( (y > view_get_yview() + view_get_hview()) or (x+150 < view_get_xview()) or (y+120 < view_get_yview()) or (y-120 > view_get_yview() + view_get_hview()) or (x-150 > view_get_xview() + view_get_wview())){
        instance_destroy(); //If it's off screen, delete it.
}
if (place_meeting( x+25 * spr_dir, 0, asset_get("par_block")) && !(player_id.special_pressed && player_id.joy_pad_idle == true)){ //the y has no purpose, so it won't check for the ground.
	wall_turn = true;
	turn = false;
}
if (wall_turn == true){ //Rat turns around when it's near a wall.
	//hsp = 1 * spr_dir;
	vsp = -7;
	sprite_index = sprite_get("rat_bombardier_turn");
	turntime += 1;
	if (turntime > 1){
		switch (spr_dir){
			case -1:
			spr_dir = 1;
			wall_turn = false;
			turned = true;
			hsp = 0.9 * spr_dir;
			break;
			case 1:
			spr_dir = -1;
			wall_turn = false;
			turned = true;
			hsp = 0.9 * spr_dir;
			break;
		}
	}
}
if (free == true && slapped == false && removerat_time < 10){
    sprite_index = sprite_get("nspecial_proj");
    if (jumpy == true){ vsp = -9; jumpytime += 1; }
    //Pressing special makes the rat jump.
    if (jumpytime >= 2){ jumpy = false; jumpytime = 0; }
    //The amount of time it takes so that it won't continue going up.
    //Resetting so you can make the rat jump again.
    if (turn == true){
        hsp = 0;
        sprite_index = sprite_get("rat_bombardier_turn");
        turntime += 1;
        if (turntime > 1){
        switch (spr_dir){
            case -1:
            spr_dir = 1;
            turn = false;
            turned = true;
            break;
            case 1:
            spr_dir = -1;
            turn = false;
            turned = true;
            break;
            }
        }
    }
}
else if (free == false && slapped == false){
    jumpy = true;
    sprite_index = sprite_get("rat_bombardier_run");
    if (player_id.special_pressed && player_id.joy_pad_idle == true && hitbox_timer > 2 && turntime < 100){
        vsp = -0.1;//Not needed I guess?
        hsp = 0;
        turn = true;
    }
    if (turned == true){ hsp = 3 * spr_dir;
    if (removerat_time >= 15){ instance_destroy(); }
    //Holding Special destroys the rat hitting the ground.
    if (removerat_time <= 15){ removerat_time = 0; }
        	}
    	}
	}
}

if (attack == AT_NSPECIAL && hbox_num == 2){
	if (free == false || place_meeting( x-4 * spr_dir, y, asset_get("par_block"))){
		create_hitbox(AT_NSPECIAL, 3, x, y);
		spawn_hit_fx( x, y-20, player_id.bomb_explosion );
		sound_play(sound_get("sfx_bomb_explode"));
		player_id.move_cooldown[AT_NSPECIAL] = 1;
		instance_destroy();
	}
}

if (attack == AT_DSPECIAL && hbox_num == 1){ //Rats, we are the rats
	through_platforms = 2;
	grounds = 1;
	walls = 1;
	if (hitbox_timer < 2){ vsp = -4; hsp = 4 * spr_dir; }
	if (hitbox_timer == 2){ grav = 0; }
	if (hitbox_timer > 2 && hitbox_timer < 280){
	if (hitbox_timer < 200){
	if (vsp > 0){ vsp -= 0.2; }
	if (vsp < 0){ vsp += 0.2; }
		}
	}
	if (hitbox_timer > 290 && hitbox_timer < 300){
		hsp = 3 * spr_dir; hitbox_timer = 2;
		selftimer = 0;
		var shortest_dist = 900;
	    var shortest_id = noone;
	    with (asset_get("oPlayer")) {
	        if (player != other.player &&
	            ((other.spr_dir > 0 && x > other.x - 1) ||
	            (other.spr_dir < 0 && x < other.x + 1))) {
	            var curr_dist = point_distance(x,y,other.x,other.y);
	            if (curr_dist < shortest_dist) {
	                shortest_dist = curr_dist;
	                shortest_id = id;
	            }
	        }
	    }
	    if (shortest_id != noone) {
	        with (shortest_id) {
	            var dist_from = y - other.y - (char_height / 1);
	            if (y > other.y + (char_height / 1) ) {
	                other.vsp = 1 + sqrt(abs(dist_from)) / 3;
	            } else if (y < other.y + (char_height / 1) ) {
	                other.vsp = -1 - sqrt(abs(dist_from)) / 3;
	            } else {
	                other.vsp = 0;
	            }
	        }
	    } else {
	       vsp *= 0.1;
	    }
	}
	
	if (hsp * spr_dir > 1 && hitbox_timer > 2 && hitbox_timer < 300){ sprite_index = sprite_get("propeller_rat_move"); }
	if (hsp * spr_dir < 1 && hitbox_timer > 2 && hitbox_timer < 300){ sprite_index = sprite_get("propeller_rat"); }
	
	if (place_meeting( x, y+20, player_id)){
	if (player_id.state == PS_ATTACK_AIR && player_id.attack == AT_USPECIAL && player_id.window >= 3 && player_id.window < 5 && hitbox_timer < 300){
	hitbox_timer = 300;
	player_id.attack = AT_USPECIAL;
	player_id.window = 6;
	player_id.window_timer = 0;
	create_hitbox(AT_DSPECIAL, 2, x * spr_dir, y-20);
	player_id.rats += 1;
	player_id.propeller_rats = player_id.propeller_rats - 1; 
		}
	}
	
	with (asset_get("pHitBox")){
    if (player != other.player && place_meeting(x,y,other.id)){
    	other.destroyed = true; //Touching enemy hitboxes kills it.
    	}
    }
    var rat_die = 0;
    with (asset_get("pHitBox")){
		if (player_id == other.player_id && place_meeting(x,y,other.id)){
			if (attack == AT_DAIR || attack == AT_FSPECIAL){
			if (rat_die == 0){ sound_play(sound_get("sfx_rat")); player_id.propeller_rats = player_id.propeller_rats - 1; }
			if (attack == AT_DAIR){
			if (hbox_num < 4){
			other.destroyed = true;
			//player_id.vsp = -6;
			player_id.attack = AT_FSPECIAL;
			player_id.window = 4;
			player_id.window_timer = 1;
			shake_camera( 2, 6 );
			player_id.hitpause = true;
			player_id.hitstop = 10;
			player_id.hitstop_full = 7;
			player_id.old_vsp = player_id.vsp;
			player_id.old_hsp = player_id.hsp;
			player_id.which_bash = 1;
			rat_die = 1;
				}
			}
			if (attack == AT_FSPECIAL){
			if (hbox_num == 1){
			other.destroyed = true;
			//player_id.vsp = -6;
			player_id.window = 4;
			player_id.window_timer = 1;
			shake_camera( 2, 6 );
			player_id.hitpause = true;
			player_id.hitstop = 10;
			player_id.hitstop_full = 7;
			player_id.old_vsp = player_id.vsp;
			player_id.old_hsp = player_id.hsp;
			rat_die = 1;
			}
			if (hbox_num == 2 || hbox_num == 3){
			other.destroyed = true;
			//player_id.vsp = -6;
			player_id.spin_hit = true;
			player_id.move_cooldown[AT_FSPECIAL] = 1;
			player_id.window = 5;
			player_id.window_timer = 1;
			shake_camera( 2, 6 );
			player_id.hitpause = true;
			player_id.hitstop = 10;
			player_id.hitstop_full = 7;
			player_id.spin_hit = true;
			player_id.which_bash = 2;
			sound_play(sound_get("sfx_spin_rebound"));
			player_id.old_vsp = player_id.vsp;
			player_id.old_hsp = player_id.hsp;
			player_id.which_bash = 2;
			rat_die = 1;
			}
			if (hbox_num == 4){
			other.destroyed = true;
			//player_id.vsp = -6;
			//player_id.window = 4;
			player_id.window_timer = 0;
			player_id.hitpause = true;
			player_id.old_vsp = player_id.vsp;
			player_id.old_hsp = player_id.hsp;
			rat_die = 1;
				}
			}
			}
    	}
    }
    
	if (hitbox_timer > 300){
		player_id.propeller_rats -= 1;
		instance_destroy();
	}
	
	if (player_id.KILL_RATS == 1 && is_rat_really_killed < 2){ 
		is_rat_really_killed += 1;
		player_id.propeller_rats = 0;
		create_hitbox(AT_DSPECIAL, 2, x, y);
		create_hitbox(AT_DSPECIAL, 3, x+5 * spr_dir, y+30);	
		player_id.propeller_rats = 0;
		destroyed = true;
		if (is_rat_really_killed == 2){	is_rat_really_killed = 0; }
	}
	
	if (self.destroyed == true){
		create_hitbox(AT_DSPECIAL, 2, x, y);
		create_hitbox(AT_DSPECIAL, 3, x+5 * spr_dir, y+30);
		player_id.propeller_rats -= 1;
	}
	
	if (propeller < 40){ propeller++; } else { propeller = 0; } //Bouncing up and down
	if (hitbox_timer < 290 && hsp == 0){
	vsp = ease_expoInOut( 1, -1, propeller, 35);
	}
}

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	case "wallland": dlen = 24; dfx = 0; dfg = 2620; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;
//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Following idle
- 1 Choosing chord
- 2 FSpecial charge
- 3
- 4
- 5 
- 6 
- 7 
- 8 
- 9 

- 10 Thrown idle
- 11 Projectile weak
- 12 Projectile strong
- 13 Returning
- 14 Jumpsquat
- 15 Hurt
- 16 Buster multi-hit
- 17
- 18
- 19

*/



/*

TODO
- Clairen field and enemy hitbox will return it to state 0

*/



if !following && state == 1 player_id.phone_arrow_cooldown = 30;

following = state < 10;

idle = state == 0 || state == 10 || state == 13;

ignores_walls = following || idle;

if (state != 1) image_angle = 0;

depth = orig_depth;

visible = true;

   jump_chord = false;
  speed_chord = false;
 shield_chord = false;
 buster_chord = false;
  smash_chord = false;
  float_chord = false;
  slide_chord = false;
  dodge_chord = false;
   stun_chord = false;
reverse_chord = false;

if player_id.echo switch(chord){
	case 1:
		float_chord = true;
		break;
	case 2:
		slide_chord = true;
		break;
	case 3:
		dodge_chord = true;
		break;
	case 4:
		stun_chord = true;
		break;
	case 5:
		reverse_chord = true;
		break;
}

else switch(chord){
	case 1:
		jump_chord = true;
		break;
	case 2:
		speed_chord = true;
		break;
	case 3:
		shield_chord = true;
		break;
	case 4:
		buster_chord = true;
		break;
	case 5:
		smash_chord = true;
		break;
}





if (state != 15 && state != 13 && state != 12 && !following && !got_hit_cooldown){
	var got_hit = false;
	var from_field = false;
	
	if place_meeting(x, y, asset_get("plasma_field_obj")){
		got_hit = true;
		from_field = true;
		sound_play(asset_get("sfx_clairen_hit_med"));
		spawn_hit_fx(floor(x),floor(y),256);
	}
	
	else with (asset_get("pHitBox")){
		var orig_guitar = other;
		
		if (player_id != other.player_id && player != other.player && place_meeting(x,y,other)){
	    	got_hit = true;
	        
	        with(player_id){
	        	if (other.type == 1){
		        	if !hitpause{
		        		old_hsp = hsp;
		        		old_vsp = vsp;
		        	}
		        	hitpause = true;
		        	hitstop = get_hitbox_value(other.attack, other.hbox_num, HG_BASE_HITPAUSE);
		        	has_hit = true;
		        }
		        kb_hitstop = get_hitbox_value(other.attack, other.hbox_num, HG_BASE_HITPAUSE) + 
		        	get_hitbox_value(other.attack, other.hbox_num, HG_EXTRA_HITPAUSE);
		        sound_play(get_hitbox_value(other.attack, other.hbox_num, HG_HIT_SFX));
		        var hit_fx_id = other.hit_effect;
		        spawn_hit_fx(orig_guitar.x, orig_guitar.y, hit_fx_id);
				if (other.type == 2 && get_hitbox_value(other.attack, other.hbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR) == 0){
					other.destroyed = true;
				}
	        }
	    }
	}
	
	if got_hit got_hit_cooldown = got_hit_cooldown_max;
	
	if got_hit{
		if (shield_chord && !from_field){
			var vfx = spawn_hit_fx(x, y + 32, player_id.vfx_chord_flourish);
		}
		else{
			hitboxBreak();
			setState(15);
			with player_id phone_arrow_cooldown = special_cooldown_max;
			if chord_juice{
				chord_juice -= 30;
				chord_juice = max(chord_juice, 0);
			}
		}
	}
}

if got_hit_cooldown got_hit_cooldown--;



//Chord HUD

can_transfer = true;

switch(chord_state){
	case 0: //Inactive
		if (chord_state_timer == -1 || chord){
			chord_state++;
			chord_state_timer = 0;
		}
		if (chord != prev_chord) chord_change_timer = chord_change_max + 1;
		break;
	case 1: //Opening
		if (chord_state_timer >= 25){
			chord_state++;
			chord_state_timer = 0;
		}
		chord_juice = chord_juice_max;
		break;
	case 2: //Active
		if (chord_state_timer == -1 || !chord_juice){
			chord_state++;
			chord_state_timer = 0;
			chord = 0;
		}
		else if (chord != prev_chord){
			chord_change_timer = chord_change_max + 1;
			chord_state--;
			chord_state_timer = 15;
		}
		if (chord != prev_chord && !player_id.phone_cheats[player_id.cheat_infinite_chords]){
			chord_cooldown[prev_chord] = chord_cooldown_max;
		}
		can_transfer = true;
		break;
	case 3: //Closing
		chord_juice = 0;
		if (chord_state_timer >= 15){
			chord_state = 0;
			chord_state_timer = 0;
		}
		break;
}

if chord_state chord_state_timer++;
if chord_change_timer > -1 chord_change_timer--;
if chord_change_timer == 0 with player_id init_shader();
if chord_juice && following && !((state == 2 || state == 12) && chord_juice == 1) chord_juice--;
for (i = 0; i <= player_id.num_chords; i++){
	if chord_cooldown[i] > -30 chord_cooldown[i]--;
}

chord_juice_flash = (chord_juice < 60) && !(chord_juice mod 10 < 5) && following;
if (chord_juice < 60) with player_id init_shader();

if player_id.phone_cheats[player_id.cheat_infinite_chords] chord_juice = chord_juice_max;




//State buffering
    
if (buffer_timer < 20 && buffered_state){
	buffer_timer++;
}else{
	buffered_state = 0;
	buffer_timer = 0;
}

if idle{
    if buffered_state{
		setState(buffered_state);
        buffered_state = 0;
    }
}



//State 0: Following idle

if (state == 0){
	
	spr_dir = player_id.spr_dir;
	
	base_x = lerp(base_x, player_id.x + player_x_offset * player_id.spr_dir, 0.3);
	base_y = lerp(base_y, player_id.y + player_y_offset, 0.3);
	
	x = base_x;
	y = base_y + sin(state_timer / 15) * 8;
	
	image_angle = sin(state_timer / 20) * 5;
	
	if (state_timer < 5 && prev_state == 1) depth = player_id.depth - 1;
	
	if player_id.state == PS_RESPAWN && !player_id.visible base_y = -100;
}



//State 1: Choosing chord

if (state == 1){
	if !player_id.chord_menu_state setState(0);
	
	//var zoop_height = player_id.y - player_id.char_height / 2;
	
	if player_id.chord_menu_cursor with player_id{
		var off_angle = chord_menu_angle[chord_menu_cursor];
		var draw_dist = chord_menu_distance * 0.5;
		if (chord_menu_state == 3){
			draw_dist += ease_quartOut(0, 70, clamp(chord_menu_timer * 2, 0, chord_menu_timer_length / 2), chord_menu_timer_length / 2);
		}
		other.base_x = round(chord_linger_x + lengthdir_x(draw_dist, off_angle));
        other.base_y = round(chord_linger_y + lengthdir_y(draw_dist, off_angle) - char_height / 2);
        other.base_angle = off_angle - 90;
	}
	else{
		base_x = player_id.x;
		base_y = player_id.y - player_id.char_height / 2;
		base_angle = 0;
		
	}
	
	x = lerp(x, base_x, 0.4);
	y = lerp(y, base_y, 0.4);
	image_angle -= angle_difference(image_angle, base_angle) * 0.4;
	
	//image_angle = player_id.joy_pad_idle ? 0 : player_id.joy_dir - 90;
	
	depth = player_id.depth - 1;
}



//State 2: FSpecial charge

if (state == 2){
	spr_dir = -player_id.spr_dir;
	
	var dist = 20;
	
	base_x = lerp(base_x, player_id.x + dist * player_id.spr_dir, 0.4);
	base_y = lerp(base_y, player_id.y + player_y_offset, 0.4);
	
	x = base_x;
	y = base_y;
	
	if (abs((player_id.x + dist * player_id.spr_dir) - x) < 16) || (player_id.attack == AT_DSPECIAL) visible = false;
	
	if !(player_id.phone_attacking && (player_id.attack == AT_FSPECIAL || player_id.attack == AT_DSPECIAL)){
		setState(0);
	}
}



//State 10: Thrown idle

if (state == 10){
	if (state_timer == 1){
		if !reverse_chord{
			hsp = 0;
			vsp = 0;
		}
		base_x = x;
		base_y = y;
	}
	
	if reverse_chord{
		hsp *= 0.8;
		base_x += hsp;
	}
	
	var found = 0;
	if slide_follow with oPlayer if self != other.player_id && !found{
		other.base_x -= sign(other.base_x - x);
		other.base_y -= sign(other.base_y - (y - 32));
		found = 1;
	}
	
	x = base_x;
	y = base_y + sin(state_timer / 15) * 8;
	
	image_angle = sin(state_timer / 20) * 5;
	
	var state_timer_max = charged ? 600 : 120;
	
	visible = !(state_timer > state_timer_max - 15 && state_timer != clamp(state_timer, state_timer_max - 10, state_timer_max - 6)) || state_timer > state_timer_max;
	
	if (state_timer > state_timer_max && !(player_id.phone_attacking && (player_id.attack == AT_FSPECIAL_2 || player_id.attack == AT_USPECIAL))) setState(13);
	
	with player_id if (place_meeting(x, y, other) && ((phone_attacking && attack == AT_USPECIAL && window > 1 && !hitpause && !was_parried) || (state == PS_PRATFALL && !was_parried))){
		if can_uspecial_bounce{
			attack_end();
			set_state(PS_JUMPSQUAT);
			other.old_speed = clamp(hsp, -air_max_speed * 1.5, air_max_speed * 1.5);
			hsp = 0;
			vsp = 0;
			can_uspecial_bounce = false;
			with other setState(14);
		}
		else with other setState(0);
	}
}



//State 11: Projectile weak

if (state == 11){
	charged = false;
	projectileHitbox(AT_FSPECIAL);
	
	if !state_timer{
		spr_dir = player_id.spr_dir;
		angle = (spr_dir == 1) ? 15 : 165;
		fastness = 18;
		image_index += 3;
	}
	
	if !hitstop{
		if abs(fastness) > 1{
			fastness -= sign(fastness) * 1;
		}
		else{
			fastness *= 0.1;
			setState(10);
		}
	}
	
	hsp = lengthdir_x(fastness, angle);
	vsp = lengthdir_y(fastness, angle);
	projectileLedgeFix();
}



//State 12: Projectile strong

if (state == 12){
	charged = true;
	if !(state_timer < 1 && dodge_chord) projectileHitbox(AT_FSPECIAL);
	
	if !state_timer{
		spr_dir = player_id.spr_dir;
		angle = (spr_dir == 1) ? 15 : 165;
		fastness = 22;
		
		if speed_chord{
			angle = (spr_dir == 1) ? 0 : 180;
			fastness = 50;
		}
		
		if float_chord{
			fastness = 7;
		}
		
		if slide_chord{
			angle = (spr_dir == 1) ? 0 : 180;
		}
		
		if dodge_chord{
			x += 200 * spr_dir;
			fastness = 16;
			spawn_hit_fx(x + 32 * spr_dir, y, 143);
			sound_play(asset_get("sfx_ell_explosion_medium"))
		}
		
		if reverse_chord{
			angle = (spr_dir == 1) ? 0 : 180;
			fastness = 16;
		}
		
		image_index += 3;
	}
	
	if !hitstop{
		var stop = reverse_chord ? abs(fastness) < 28 : abs(fastness) > 1;
		if stop{
			if reverse_chord fastness -= 1;
			else fastness -= sign(fastness) * (1 + speed_chord * 2 - float_chord * 0.9);
		}
		else{
			fastness *= 0.1;
			setState(10);
			if slide_chord slide_follow = 1;
		}
	
		if jump_chord angle = lerp(angle, 90, 0.1);
	}
	
	hsp = lengthdir_x(fastness, angle);
	vsp = lengthdir_y(fastness, angle);
	projectileLedgeFix();
}



if (hitbox != noone && state != 12 && state != 11 && state != 17){
	instance_destroy(hitbox);
	hitbox = noone;
}



//State 13: Returning

if (state == 13){
	var state_timer_max = 20;
	
	x = ease_quartInOut(round(starting_x), round(player_id.x + player_x_offset * player_id.spr_dir), state_timer, state_timer_max);
	y = ease_quartInOut(round(starting_y), round(player_id.y + player_y_offset), state_timer, state_timer_max);
	
	if (state_timer == round(state_timer_max / 2)) spr_dir = player_id.spr_dir;
	
	player_id.phone_arrow_cooldown = 45;
	
	if (state_timer > state_timer_max){
		setState(0);
		base_x = player_id.x + player_x_offset * player_id.spr_dir;
		base_y = y;
	}
}



//State 14: Jumpsquat

if (state == 14){
	image_yscale = 0.75 - state_timer * 0.1;
	image_xscale = 1.5 + state_timer * 0.2;
	if (player_id.state == PS_JUMPSQUAT){
		var amt = 0.8;
		player_id.x = lerp(player_id.x, x, amt);
		player_id.y = lerp(player_id.y, y, amt);
	}
	else{
		player_id.hsp = old_speed;
		setState(0);
		image_yscale = 1;
		image_xscale = 1;
	}
}



//State 15: Hurt

if (state == 15){
	hsp = 0;
	vsp = 0;
	
	hitboxBreak();
	
	var state_timer_max = 30;
	
	visible = (state_timer % 10 < 5);
	
	if (state_timer > state_timer_max) setState(13);
}



//State 16: Buster multi-hit

if (state == 16){
	if !hitstop{
		
		if ("target" in self && target.visible && target.state_cat == SC_HITSTUN){
			target.x = lerp(target.x, x, 0.5);
			target.y = lerp(target.y, y + 32, 0.5);
		}
		
		player_id.phone_arrow_cooldown = max(player_id.phone_arrow_cooldown, 25);
		
		hsp *= 0.8;
		vsp = 0;
		
		y -= 2;
		
		if state_timer && !(state_timer % 6){
			hitboxBreak();
			hitbox = create_hitbox(AT_FSPECIAL, (state_timer == 24) ? (smash_chord ? 6 : 5) : 4, round(x), round(y));
			hitbox.spr_dir = spr_dir;
			hitbox.owner = self;
		}
		
		if (state_timer == 25){
			setState(10);
		}
	}
}



//State 17: DSpecial

if (state == 17){
	charged = false;
	
	projectileHitbox(AT_DSPECIAL);
	
	if !state_timer{
		spr_dir = player_id.spr_dir;
		angle = (spr_dir == 1) ? 80 : 100;
		fastness = 18;
		image_index += 3;
		has_spawned_hitbox = false;
	}
	
	if !hitstop{
		if abs(fastness) > 1{
			fastness -= sign(fastness) * 1;
			angle = lerp(angle, 90, 0.1);
		}
		else{
			fastness *= 0.1;
			setState(10);
		}
	}
	
	x += lengthdir_x(fastness, angle); //not hsp/vsp to (SOMEHOW????) fix bug with landing buster fspecial and then using dspecial
	y += lengthdir_y(fastness, angle);
	
	projectileLedgeFix();
}



//Sprite and animation handling

//Increment image_index based on the animation type assigned, above, to the state
if !hitstop{
	switch(anim_type[state]){
        case 0:
	        var frames = 9;
	        var frame_dur = 6;
	        image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
	        image_index = 0;
	        break;
	    case 1:
	    	image_index += 0.5;
	    	break;
	}
}

//If not already at the sprite it should be, switch to the new sprite
if (sprite_index != sprite[state]){
    sprite_index = sprite[state];
}



//Make time progress
if !hitstop{
	state_timer++;
}



y = floor(y);

vsp_prev = vsp;
hsp_prev = hsp;

var i = 4;

repeat(4){
	prev_x[i] = prev_x[i-1]
	i--;
}

prev_x[0] = x;
prev_y[0] = y;

prev_chord = chord;



#define setState(new_state)

prev_state = state;
state = new_state;
state_timer = 0;

starting_x = x;
starting_y = y;

has_spawned_hitbox = false;

image_yscale = 1;
image_xscale = 1;

slide_follow = 0;



#define projectileHitbox(atk)

if !instance_exists(hitbox) hitbox = noone;

if (hitbox == noone && !place_meeting(x, y, asset_get("plasma_field_obj")) && !has_spawned_hitbox){
	var num = 2;
	
	if charged{
		num = 3;
		if buster_chord num = 4;
		if smash_chord num = 6;
		if dodge_chord num = 7;
	}
	
	hitbox = create_hitbox(atk, num, round(x), round(y));
	hitbox.spr_dir = spr_dir;
	hitbox.owner = self;
	has_spawned_hitbox = true;
}

if (hitbox != noone && !hitstop){
	hitbox.x = x + hsp;
	hitbox.y = y + vsp;
}



#define hitboxBreak

if instance_exists(hitbox) instance_destroy(hitbox);



#define projectileLedgeFix

if place_meeting(x + hsp, y, asset_get("par_block")){
    var correct_limit = 32;
    var valid_found = 0;
    for (i = 0; i < correct_limit && !valid_found; i++){
        if !place_meeting(x + hsp, y - i, asset_get("par_block")){
            valid_found = i;
        }
    }
    y -= valid_found;
}
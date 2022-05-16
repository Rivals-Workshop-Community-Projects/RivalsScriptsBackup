//B - Reversals
if clamp(attack, 16, 19) == attack trigger_b_reverse();

//Other stuff
switch (attack)
{	
	case AT_DTILT:
	//Make dtilt jump-cancellable on hit
		can_jump = has_hit_player;
	break;
	case AT_DSPECIAL:
		if window == 2 and window_timer == 1
		{
			if free vsp = -10
			
			instance_create(x,y-1,"obj_article1")
		}
	break;
	case AT_NSPECIAL:
	break;
	case AT_FSPECIAL:
		//Random bob-omb
		if (window == 1 && window_timer == 1)
		{
			bomb_numbering = random_func( 0, 4, false);
		}
		break;
	case AT_USPECIAL:
	
		switch window
		{
			case 1:
			//do it
			if window_timer == 1
			{
				with(asset_get("obj_article3")){
					disappear_time = disappear_time_max;
				}
				cannon_dir = 0;
				cannon_charge = 0;
			}
			case 2:
				if (!hitstun)
					nspecial_grab_timer++;
				//slowdown, don't allow the player to move
				hsp *= 0.9;
				vsp *= 0.6;
				can_move = false;
				
				//don't execute the next code if you're in the first window
				if window == 1 break;
				
				cannon_charge++;
				
				var dir, new_dir;
				dir = left_down - right_down;
				if (!joy_pad_idle){
					new_dir = clamp(cannon_dir + (dir*2), -80, 80);
					//new_dir = cannon_dir + (dir*2);
					
					if dir != 0 and get_gameplay_time() mod 16 == 0 and cannon_dir != new_dir && !hitpause cannon_move_sound = sound_play(sound_get("cannon_move"))
						cannon_dir = new_dir;
				}
				if window_timer > 5 and !cannon_button_down
				{
					window++;
					window_timer = 0;
				}
			break;
			case 3:
				if window_timer == 5 && !hitpause
				{
				super_armor = false;
					var article = instance_create(x,y,"obj_article3");
					//print("charge = " + string(cannon_charge));
					sound_play(sound_get("cannon_fire"));
					sound_stop(sound_get("cannon_move")); 
					
					var spd = 12+floor(cannon_charge/8.5);
					
					// im capping this because holy SHIT
					spd = min(spd, 23);
					
					// maths
					hsp = lengthdir_x(spd, 90 + cannon_dir);
					vsp = lengthdir_y(spd, 90 + cannon_dir);
					move_cooldown[AT_USPECIAL] = 30;
					article.hsp = -hsp * .8;
					article.vsp = -vsp * .8;
					
					spawn_hit_fx( x, y, launchblast);
					
					if nspecial_grabbed_player != noone
					{
						nspecial_grab_timer = 1;
						var funnyhitbox = create_hitbox(AT_USPECIAL, 1, x, y);
					}
				}
			break;
		}
	break;
	case AT_DATTACK:
	    if window == 1 { dashcount = 0; }
		if window == 2 and !hitpause && dashcount > 4 {
			window++;
			window_timer = 0;
		}
		if window == 2 && window_timer = 1{
		dashcount = dashcount+1; }
		
		if window = 4 && has_hit{
		can_attack = true;
		}

	break;
	case AT_DAIR:
		if window == 1 vsp *= 0.9;
	break;
	case AT_DSTRONG:
	    can_fast_fall = false;
	    if (window == 2 && window_timer == 4 && free) {
		vsp = -5;
		}
		if (window == 4 && window_timer >= 5 && free)
		{
			can_move = true;
			can_dash = true;
			can_jump = true;
		}
		if (has_hit_player){
		set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 17);
		} else {
		set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 23);
		}
	case AT_USTRONG:
		if window > 1 
		{
			hud_offset = floor(lerp(hud_offset, 140, .2));
			if window == 3 and window_timer == 13 and !hitpause
			{
			sound_play(sound_get("sm64_shatter"));
			}
		}
	break;
	case AT_FSTRONG:
		if (has_hit_player){
		set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 20);
		} else {
		set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 27);
		}
	break;
}

//SPECIAL TAUNTS
//WARP TAUNTS
if !(respawn_taunt){
if (get_player_color( player ) == 8){
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_gb"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("8bit_warp"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("chuckyanoise_gb"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("8bit_warp"));
}
else if (get_player_color(player) == 26){
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("funny_sans_move"));
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_sans"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("chuckyanoise_megalo"));
} 
else if (get_player_color( player ) == 27){
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_smb1"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("8bit_warp"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("chuckyanoise_smb1"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("8bit_warp"));
}
else if (get_player_color( player ) == 28){
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_smb2"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("8bit_warp"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("chuckyanoise_smb2"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("8bit_warp"));
}
else if (get_player_color( player ) == 29){
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_smb3"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("8bit_warp"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("chuckyanoise_smb3"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("8bit_warp"));
} else {
reset_attack_value(AT_TAUNT, AG_SPRITE);
reset_window_value(AT_TAUNT, 1, AG_WINDOW_SFX);
reset_window_value(AT_TAUNT, 2, AG_WINDOW_SFX);
reset_window_value(AT_TAUNT, 3, AG_WINDOW_SFX);
reset_hitbox_value(AT_DAIR, 1, HG_HIT_SFX);
}
}

//FLAG TAUNTS
if attack == AT_TAUNT_2 && window == 2 && window_timer == 39 && taunt_down {
	window = 2;
	window_timer = 2;
}

if (attack == AT_TAUNT_2){
if (get_player_color( player ) == 25){
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_transrightsarehumanrights"));
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_SPRITE, sprite_get("taunt_transflag")); }
if (get_player_color( player ) == 24){
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_pronounsarentthathard"));
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_SPRITE, sprite_get("taunt_enbyflag")); }
if (get_player_color( player ) == 23){
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_gayisntaninsult"));
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_SPRITE, sprite_get("taunt_prideflag")); }
}

if (attack == AT_TAUNT_2 && window == 2) {
	    	suppress_stage_music(0, 0.02);
if (window_timer == 1) && !hitpause{
        if (get_player_color( player ) == 25){
        sound_play( sound_get( "trans_rights" ), true, noone, 1, 1); }
		if (get_player_color( player ) == 24){
        sound_play( sound_get( "numerous_bees" ), true, noone, 1, 1); }
		if (get_player_color( player ) == 23){
        sound_play( sound_get( "the_big_homo" ), true, noone, 1, 1); }
}
}

if (attack == AT_TAUNT_2 && window != 2){
    sound_stop( sound_get( "trans_rights" ));    
	sound_stop( sound_get( "numerous_bees" ));
	sound_stop( sound_get( "the_big_homo" ));    
}

//PHONE PROJECTILE (hitbox_update doesnt take AT_PHONE >:C)
if (attack == AT_PHONE && window == 3 && window_timer == 16){
create_hitbox(AT_TAUNT_2, 2, x, y - 64);
}

if (attack == 49){
if (window == 1){
if (window_timer == 2) && !hitpause{
sound_play(sound_get("final_spiral"));
}
}
}


// attack_update

//B - Reversals
if (attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (free && attack==AT_USTRONG && window == 1) {
	set_state(PS_IDLE_AIR);
}

if (attack==AT_FAIR && window == 1 && window_timer == 14) {
	sound_play( sound_get( "SWB1" ) );
}


if (attack==AT_UAIR&&window==1&&window_timer==1) {
	reset_attack_value(AT_UAIR, AG_LANDING_LAG);
}
if (attack==AT_UAIR && has_hit_player) {
	set_attack_value(AT_UAIR, AG_LANDING_LAG, 5);
}

if (attack==AT_FAIR && window == 2 && window_timer == 2) {
	sound_play( sound_get("SWB1"),false,noone,0.5,1 );
	sound_play( sound_get("SWL3"),false,noone,0.7,1.2 );
}
if (attack==AT_BAIR && window == 1 && window_timer == 10) {
	sound_play( sound_get("ao_nair"),false,noone,0.5,1.2 );
}
if (attack==AT_BAIR && window == 2 && window_timer%2==0 ){
	spawn_hit_fx( x-16+random_func( 2, 32, true ), y-24-24+random_func( 5, 48, true ), particle2 );
}
if (attack==AT_FSPECIAL && (window == 2||window == 3) && window_timer%2==0 ){
	spawn_hit_fx( x-(20*spr_dir)-16+random_func( 2, 32, true ), y-24-24+random_func( 5, 48, true ), particle1 );
}

if (attack==AT_USTRONG && free) {
	can_fast_fall = false;
}

if (attack==AT_USTRONG && window > 2 && !free &&!has_hit_player && !was_parried) {
    state=PS_LANDING_LAG;
	state_timer=0;
}

if (attack==AT_JAB && window == 11 && !was_parried){
    iasa_script();
}

if (attack==AT_DAIR && window == 5 && !was_parried){
    iasa_script();
}
/*
if (attack==AT_DATTACK && shield_pressed && window <= 2) {
	window = 5;
}
*/
if (attack==AT_DATTACK && window == 4 && window_timer == 1 && has_hit_player && !was_parried) {
	window = 5;
}

if (attack==AT_DTILT && window == 4 && has_hit_player && !was_parried) {
    iasa_script();
}

if (attack==AT_DATTACK && window == 5 && window_timer >= 10 /*&& !shield_pressed*/ && !was_parried) {
    /*iasa_script();
	if (!has_hit_player){
		move_cooldown[AT_DATTACK]=3;
	}*/
}

if (attack==AT_FTILT && window == 6 && window_timer >= 5 && !was_parried) {
	iasa_script();
	move_cooldown[AT_FTILT]=3;
}

if (attack==AT_BAIR && window == 5 && !was_parried) {
	iasa_script();
}
if (attack==AT_TAUNT_3){
	if (window == 3 && taunt_down) {
		window = 2;
		window_timer = 0;
	}/*
	if (window == 2 || window == 3) {
		//print(string(dsp_test_buffer))
		if (left_down){
			if (dsp_test_buffer!=1){
				dsp_test_buffer = 1;
				dsp_test_timer = 0;
				dsp_test_dir = -1;
				sound_play(sound_get("altsel"));
			}
		}else if (right_down){
			if (dsp_test_buffer!=2){
				dsp_test_buffer = 2;
				dsp_test_timer = 0;
				dsp_test_dir = 1;
				sound_play(sound_get("altsel"));
			}
		}else{
			if (dsp_test_buffer!=0){
				if (dsp_test_buffer = 1){
					dsp_test_dir = 1;
					dsp_test_timer = 0;
					sound_play(sound_get("altsel"));
				}
				if (dsp_test_buffer = 2){
					dsp_test_dir = -1;
					dsp_test_timer = 0;
					sound_play(sound_get("altsel"));
				}
				dsp_test_buffer = 0;
			}
		}
		if (attack_pressed){
			dsp_TESTMODE = dsp_test_buffer;
			clear_button_buffer( PC_ATTACK_PRESSED );
			sound_play(sound_get("gui_accept"));
		}
	}*/
}

if (attack==36&&window==2&&taunt_down&&window_timer>=43){window_timer=43}
if (attack==AT_TAUNT && window == 1 && window_timer == 1) {
	sound_play( sound_get("scoptool_2") );
}
if (attack==AT_TAUNT_4 && window == 1 && window_timer == 1) {
	sound_play( sound_get("skate"), false, noone, 0.7);
}
if (attack==AT_NAIR && window >= 3 && !was_parried && !hitpause) {
	can_wall_jump = true;
}

/*if (dsp_TESTMODE == 2){//deprecated
	if (attack==AT_JAB || attack==AT_FTILT || attack==AT_UTILT ||
		attack==AT_DTILT || attack==AT_DATTACK ||
		attack==AT_NAIR || attack==AT_FAIR || attack==AT_BAIR || 
		attack==AT_UAIR || attack==AT_DAIR) {
		if (is_special_pressed( DIR_DOWN )){
			dsp_modeii_buffer = true;
		}
	}
}*/

if (dsp_qualified){
	if (!was_parried){
		if (hitpause){
			if (is_special_pressed( DIR_DOWN ) || dsp_modeii_buffer){
				dsp_confirmed = true;
				
				if (attack==AT_FTILT&&!ftilt_hit){
				}else if (attack==AT_UTILT&&!utilt_hit){
				}else{
				attack_end() 
				destroy_hitboxes()
				}
			}
		}else{
			if (is_special_pressed( DIR_DOWN ) || dsp_modeii_buffer){
				dsp_confirmed = true;
				
				if (attack==AT_FTILT&&!ftilt_hit){
				}else if (attack==AT_UTILT&&!utilt_hit){
				}else{
				attack_end() 
				destroy_hitboxes()
				}
			}
			if (dsp_confirmed){
				if (attack==AT_FTILT&&!ftilt_hit){
				}else if (attack==AT_UTILT&&!utilt_hit){
				}else{
					attack_end() 
					destroy_hitboxes()
					reset_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS);
					attack = AT_DSPECIAL;
					hurtboxID.sprite_index = get_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE);
					var ring = instance_create( x, y-30, "obj_article1" );
					ring.r_dur = 20
					window = 1;
					window_timer = 5;
					dsp_modeii_buffer = false;
					dsp_free = false;
					dsp_override = true;
					dsp_confirmed = false;
					dsp_qualified = false;
				}
			}else{
				dsp_qualified--;//dsp_qualified = false;//used to be bool
			}
		}
	}
}
//print("dsp_qualified = "+((dsp_qualified)?"!!YES!!":"nah"))
//print("dsp_confirmed = "+((dsp_confirmed)?"!!YES!!":"nah"))



// new Ao code below

if (attack==AT_USTRONG){
	if (window==2){
		if(window_timer==8){
			spawn_dust_fx( x, y+8, sprite_get("starcircle_1x"), 16 );
			sound_play(sound_get("wind5"),false,-4,1,1.5);
		}
	}
}


if (attack==AT_NSPECIAL){
	if (window==1){
		if (window_timer==1){
			usp_hsp_storage = hsp;
			usp_vsp_storage = (free)?vsp:-6;
			nsp_dir_h = 0;
			nsp_dir_v = 0;
			nsp_direction_storage_for_post_draw = 0;
		}
	}
	if (window==2){
		if (window_timer==1){
			sound_play(sound_get("nsp_c"));
		}
	}
	if (window<=3){
		fall_through = true;
		usp_hsp_storage=usp_hsp_storage/1.2;//1.12
		usp_vsp_storage=usp_vsp_storage/1.2;//1.12
		hsp=usp_hsp_storage;
		vsp=usp_vsp_storage;
		if (window==3&&window_timer==8){
			var tmp_speed = 35; //35
			if (right_down||(!left_down&&!right_down&&spr_dir==1)){
				if (down_down||up_down){
					nsp_dir_h = tmp_speed/1.3;
					nsp_dir_v = (tmp_speed/1.3)*(down_down-up_down);
					nsp_direction_storage_for_post_draw = (down_down)?2:(up_down)?1:0;
					
				}else{
					nsp_dir_h = tmp_speed;
					
				}
				spr_dir = 1;
			}
			if (left_down||(!left_down&&!right_down&&spr_dir==-1)){
				if (down_down||up_down){
					nsp_dir_h = -tmp_speed/1.3;
					nsp_dir_v = (tmp_speed/1.3)*(down_down-up_down);
					nsp_direction_storage_for_post_draw = (down_down)?2:(up_down)?1:0;
					
				}else{
					nsp_dir_h = -tmp_speed;
					
				}
				spr_dir = -1;
			}
			instance_create( x, y-30, "obj_article1" );
			instance_create( x, y-30, "obj_article2" );
		}
	}
	if (window==4){
		fall_through = true;
		//a
		if (!hitpause){
			if (window_timer==1){
				sound_play(sound_get("nsp_t"),false,-4,0.8,1.1);
			}
			if (window_timer==8){
				sound_play(sound_get("nsp_sw"),false,-4,0.7,1.2);
				sound_play(sound_get("dash"),false,-4,0.9,1.05);
			}
			var tstst = get_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH);
			var tmp_h = ease_cubeOut( round(nsp_dir_h), round(nsp_dir_h/5), window_timer, tstst );
			var tmp_v = ease_cubeOut( round(nsp_dir_v), round(nsp_dir_v/5), window_timer, tstst );
			hsp = tmp_h
			vsp = tmp_v
		}
		if (window_timer==10){
			//spawn_dust_fx( x+(10*spr_dir), (y-30)+(10*sign(vsp)), sprite_get("hfx_tackle"), 15 )
			//spawn_hit_fx( x+(14*spr_dir), (y-30)+((floor(vsp)==0)?0:(14*sign(vsp))), tackle_hfx)
			spawn_hit_fx( x+(20*spr_dir), (y-30)+((floor(vsp)==0)?0:(20*sign(vsp))), tackle_hfx)
		}
		//vforce's ledge snap code thank you
		if (place_meeting(x + hsp, y, asset_get("par_block")) && free) 
		{
			for (var i = 1; i < 30; i++)
			{
				if (!place_meeting(x + hsp, y - i ,asset_get("par_block"))) 
				{
					y -= i;
					break;
				}
			}
		}
		
	}
	if (window==5){
		if (!hitpause){
			hsp = nsp_dir_h/10;
			vsp = nsp_dir_v/10;
		}
	}
	if (window==6){
		if (!hitpause){
			var tstst = get_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH);
			var tmp_h = ease_cubeOut( round(nsp_dir_h/10), 0, window_timer, tstst );
			var tmp_v = ease_cubeOut( round(nsp_dir_v/10), 0, window_timer, tstst );
			hsp = tmp_h;
		if (free){
			vsp = tmp_v;
		}
		}
	}
	if (window==7){
		if (window_timer==1){
			hsp = 0;
			vsp = 0;
		}
	}
	if (window<6){
		can_move = false;
		can_fast_fall = false;
	}
	
	//mawralgrab
	if (attack == AT_NSPECIAL) {
		//reset 'grabbed_player' variables on the first frame when performing a grab.
		if (window == 1 && window_timer == 1) { 
			grabbed_player_obj = noone; 
			grabbed_player_relative_x = 0;
			grabbed_player_relative_y = 0;
		}
	}
	if (attack == AT_NSPECIAL && instance_exists(grabbed_player_obj)) {
		
		//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
		if (window >= 5) { grabbed_player_obj = noone; }
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

		else {
			//keep the grabbed player in hitstop until the grab is complete.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			
			//if this is the first frame of a window, store the grabbed player's relative position.
			if (!nsp_hit) {
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
				nsp_hit = true;
			}
			 
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = 16 * spr_dir;
				var pull_to_y = 0;
			//on the first window, pull the opponent into the grab.
			if (window == 4) { 
				
				if (!hitpause){
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
				}
			}
			if (window >= 5) { 
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + pull_to_x
				grabbed_player_obj.y = y + pull_to_y
			}
			//the above block can be copied for as many windows as necessary.
			//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		}
	}
}


if (attack==AT_DSPECIAL){
	can_fast_fall = false;
	if (window==2){
		if (window_timer==1){
			spawn_dust_fx( x, y-12, sprite_get("starcircle_1x"), 16 );
		}
		if (dsp_free){
			vsp=16//13
		}else{
			vsp=-16
		}
		spawn_hit_fx( x-8+random_func( 2, 16, true ), y-16-16+random_func( 5, 32, true ), particle1 );
	}
	if (window==3&&window_timer==1){
		if (!dsp_free){
			vsp=-6
		}
	}
	if (window>1&&window!=4&&window_timer!=1){
		if (!free){
			set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
			window = 4;
			window_timer = 0;
		}
	}
}


if (attack==AT_USPECIAL){
	can_fast_fall = false;
	if (window==1&&window_timer>=13){
		if (((spr_dir==1 && right_down) || (spr_dir==-1 && left_down))&&special_down&&!up_down){
			usp_d_able = true;
		}
	}
	if (window==1&&window_timer>=13){
		if (usp_d_able){
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 8);
				window = 7;
				window_timer = 0;
				usp_d_done = true;
				if (window_timer!=15){
					sound_play(sound_get("SWB1"))
				}
		}
	}
	if (window==1||window==2||window==3){
		//can_move = false;
		//hsp = clamp(hsp+(right_down-left_down)*0.5, -1, 1)
		hsp = clamp(hsp, -3, 3)
		usp_did = true;
	}
	if (window==3){
		if (window_timer>=6){
			if (!was_parried&&!hitpause){
				can_shield = true;
			}
		}
	}
	if (window==3&&window_timer==12){
		hsp = clamp(hsp+(right_down-left_down)*3, -2.5+(spr_dir/3), 2.5+(spr_dir/3))
		//vsp = vsp/1.5
	}
	if (window==4){
		//can_move = false;
		hsp = clamp(hsp, -3.5, 3.5)
		//vsp = clamp(vsp, -16, 16)
		if (!hitpause){
			if (!free){
				window = 5;
				window_timer = 0;
				//var xa = get_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X);
				//var ya = get_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y);
				//create_hitbox( AT_USPECIAL, 1, xa, ya )
			}else{
				create_hitbox( AT_USPECIAL, 4, x, y )
			}
		}
	}
	if (window==3||window==4||window==7||window==8){
		if (!was_parried&&!hitpause){
			can_wall_jump = true;
		}
	}
	if (window==5&&window_timer==1){
		shake_camera(6,3)
	}
	if (window==7){
		//hsp = 11*spr_dir;
		//vforce's ledge snap code thank you
		if (place_meeting(x + hsp, y, asset_get("par_block")) && free) 
		{
			for (var i = 1; i < 40; i++)
			{
				if (!place_meeting(x + hsp, y - i ,asset_get("par_block"))) 
				{
					y -= i;
					break;
				}
			}
		}
	}
	if (window==7||window==8){
		if (has_hit_player){
			if (!hitpause && !was_parried){
				iasa_script();
			}
		}
	}
}

if (attack==AT_FSPECIAL){
	var tmp_dur = get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH);
	if (window==1&&window_timer==tmp_dur-6){
		switch (fsp_level){
			case 0: sound_play(sound_get("wind1")); break;
			case 1: sound_play(sound_get("wind2")); break;
			case 2: sound_play(sound_get("wind3")); break;
			case 3: sound_play(sound_get("wind4")); break;
			case 4: sound_play(sound_get("wind5")); break;
			
			default: break;
		}
	}
	if (window==1&&window_timer==tmp_dur){
		fsp_time = fsp_t_max;
		fsp_a_time = fsp_a_t_max;
	}
	if (window>1 && !was_parried){
		can_wall_jump = true;
	}
	if (fsp_time>0&&!hitpause){
		hsp = ease_linear( 0, 10, fsp_time, fsp_t_max )*spr_dir
		fsp_time--;
	}
	if (fsp_a_time>0){
		fsp_a_time--;
	}
	var tmp_v = 0.5 + (fsp_level*1.5);
	if (window==2||window==3||window==4){
		vsp = clamp(vsp, tmp_v*-1, tmp_v)
		
	}
	if (window==4){//5
		if (fsp_level<4){
			if (special_pressed){
				window=1;
				window_timer=0;
				spr_dir=(left_down)?-1:(right_down)?1:spr_dir
				fsp_level++;
				attack_end()
				has_hit_player = false;
				set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6+(0.1*fsp_level));
				set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.6+(0.1*fsp_level));
			}
		}
		vsp = clamp(vsp, (tmp_v+2)*-1, tmp_v+2)
	}
	if (window==2){
		if (!was_parried){
			if (has_hit_player){
				if (jump_pressed || (tap_jump_pressed && can_tap_jump()) ){
					fsp_jc_confirm = true;
				}
			}
		}
	}
	if (window>=3){//5
		if (!was_parried){
			if (has_hit_player){
				/*if (fsp_level<4){
					fsp_buffer = fsp_buffer_amount//20
				}*/
				//"fake jump"
				if (jump_pressed || (tap_jump_pressed && can_tap_jump()) || fsp_jc_confirm ){
					if (fsp_level<4){
						vsp = -12;
						window = 0;
						window_timer = 0;
						state_timer = 0;
						set_state( PS_DOUBLE_JUMP )
						fsp_buffer = fsp_buffer_amount//20
					}
				}
			}
		}
	}
	if (window<6){
		can_move = false;
	}
}




// -- -- -- -- --
// dustland
// -- -- -- -- --
if (attack==AT_FSPECIAL){
	if (!free){
		if (window==2){
			if (window_timer==1){
				spawn_base_dust(x, y, "dash_start")
			}
		}
		if (window==4){
			if (window_timer==1){
				spawn_base_dust(x+(50*spr_dir), y, "dash", spr_dir*-1)
			}
		}
	}
}

if (attack==AT_FTILT){
	if (window==2){
		if (window_timer==1){
			spawn_base_dust(x, y, "dash")
		}
	}
}

if (attack==AT_FSTRONG){
	if (window==2){
		if (window_timer==5){
			spawn_base_dust(x, y, "dash")
		}
	}
	if (window==3){
		if (window_timer==1){
			spawn_base_dust(x, y, "dash_start")
		}
	}
}

if (attack==AT_USTRONG){
	if (window==2){
		if (window_timer==8){
			spawn_base_dust(x, y, "jump")
		}
	}
}










//supersonic's base game dust function
//find this here : https://github.com/SupersonicNK/roa-workshop-templates/blob/master/snippets/spawn_base_dust.md

#define spawn_base_dust
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
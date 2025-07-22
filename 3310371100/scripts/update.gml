//update

if (awake == false){
	awake = true;
	instance_create( x, y, "obj_article2" );
	switch (current_time%10){
		case 0:
			ushr_victory_quote = "Why did that Me want to fight me!? Did I do something...? Was it my fault...??"
			victoryicon_subimg = 9;
		break;
		case 1:
			ushr_victory_quote = "Sun shine or rain fall, I'm always here!"
			victoryicon_subimg = 2;
		break;
		case 2:
			ushr_victory_quote = "Clouds can cover the sky, but it doesn't have to rain forever!"
			victoryicon_subimg = 3;
		break;
		case 3:
			ushr_victory_quote = "Fighting myself, is this like a normal thing in this world? So odd..."
			victoryicon_subimg = 4;
		break;
		case 4:
			ushr_victory_quote = "So if you're me, should I call you me, or - ah, nevermind."
			victoryicon_subimg = 4;
		break;
		case 5:
			ushr_victory_quote = "Snow melts to nothing, but rain dries away too. Enjoy them while they last!"
			victoryicon_subimg = 3;
		break;
		case 6:
			ushr_victory_quote = "Don't look down, look up at the sky! Well, do watch your step, of course."
			victoryicon_subimg = 1;
		break;
		case 7:
			ushr_victory_quote = "Don't forget to drink plenty of water!"
			victoryicon_subimg = 0;
		break;
		case 8:
			ushr_victory_quote = "Puddles reflect the sky, maybe they're looking at the sky like we do."
			victoryicon_subimg = 0;
		break;
		case 9:
			ushr_victory_quote = "Pluey?"
			victoryicon_subimg = 6;
		break;
		case 10:
		case 11:
		case 12:
			ushr_victory_quote = "I guess this was truly the experience of a contemporary guardian angel?"
			victoryicon_subimg = 0;
		break;
		
		default: break;
	}
}

if (state == PS_HITSTUN){
	gravity_speed = gravity_speed_normal
}else if (state == PS_FIRST_JUMP || (state == PS_ATTACK_AIR && jump_tracker == 1 )){
	if (vsp < -3){
		gravity_speed = gravity_speed_rise
	}else if (vsp >= 0){
		gravity_speed = gravity_speed_fall_b
	}else if (vsp >= -3){
		gravity_speed = gravity_speed_fall_a
	}
}else if (state==PS_DOUBLE_JUMP || (state == PS_ATTACK_AIR && jump_tracker == 2 )){
	if (vsp < 1){
		gravity_speed = gravity_speed_normal
	}else if (vsp >= 1){
		gravity_speed = gravity_speed_fall_b
	}
}else{
	gravity_speed = gravity_speed_normal
}

if (koffing_gas_active==1){//override if koffing. compat
	gravity_speed = gravity_speed_normal;
}

if (state == PS_PRATLAND){
	if (the_parried_ice==1){//normal
		state_timer-=0.2;
	}
	if (the_parried_ice==2){//fstrong
		state_timer-=0.5;
	}
}

//jumptracker (prev_state apparently doesnt work well to detect this ????)
if (state == PS_FIRST_JUMP){
	jump_tracker = 1
}else if (state == PS_DOUBLE_JUMP){
	jump_tracker = 2
}else if(state!=PS_ATTACK_AIR){
	jump_tracker = 0
}

if (state == PS_CROUCH){
	crouch_cooldown = 40;
	if (!hitpause){
		if (image_index == 0 || image_index == 1){
			var crouch_detect = true;
		}else{ crouch_detect = false; crouch_check = false;}
		if (crouch_detect == true && crouch_check == false){
			crouch_check = true;
			crouch_tracker++;
			//sound_play(asset_get("mfx_notice"))
			if (crouch_tracker >= crouch_max_patience){
				crouch_tracker = 0;
				crouch_cooldown = 0;
				crouch_check = false;
				set_attack(AT_TAUNT_2);
			}
		}
	}
}
if (crouch_cooldown>0){
	crouch_cooldown--;
}
if (crouch_tracker>0){
	if (crouch_cooldown<=0){
		crouch_tracker = 0;
	}
	if (state_cat != SC_GROUND_NEUTRAL || state == PS_WALK){
		crouch_tracker = 0;
		crouch_cooldown = 0;
	}
}

//what do they call this tech again, pivot cancel?
if (state==PS_DASH_TURN){
	var tmp_x_mult = 2.2;//2.2;
	var tmp_hsp_mult = 1.05;//1.2;
	if (spr_dir == 1){//right
		if (is_attack_pressed( DIR_LEFT )){
			set_attack(AT_FTILT);
			spr_dir = spr_dir*-1;
			x = x+(hsp*tmp_x_mult);
			hsp = hsp*tmp_hsp_mult;
			spawn_base_dust(x-(14*spr_dir), y, "dash_start")
			spawn_base_dust(x, y, "dash")
			//sound_play(asset_get("mfx_star"),false,noone,0.4,1.3)
			sound_play(sound_get("ting"),false,noone,0.5,1.5)
			var tmp_hfx = spawn_hit_fx(x-(30*spr_dir), y-30, 27)
			tmp_hfx.depth = 30;
		}
		if (is_attack_pressed( DIR_RIGHT )){
			set_attack(AT_FTILT);
			x = x+(hsp*tmp_x_mult);
			hsp = hsp*tmp_hsp_mult;
			spawn_base_dust(x-(28*spr_dir), y, "dash", 1)
			//sound_play(asset_get("mfx_star"),false,noone,0.4,1.3)
			sound_play(sound_get("ting"),false,noone,0.5,1.5)
			var tmp_hfx = spawn_hit_fx(x-(30*spr_dir), y-30, 27)
			tmp_hfx.depth = 30;
		}
	}else if (spr_dir == -1){//left
		if (is_attack_pressed( DIR_RIGHT )){
			set_attack(AT_FTILT);
			spr_dir = spr_dir*-1;
			x = x+(hsp*tmp_x_mult);
			hsp = hsp*tmp_hsp_mult;
			spawn_base_dust(x-(14*spr_dir), y, "dash_start")
			spawn_base_dust(x, y, "dash")
			//sound_play(asset_get("mfx_star"),false,noone,0.4,1.3)
			sound_play(sound_get("ting"),false,noone,0.5,1.5)
			var tmp_hfx = spawn_hit_fx(x-(30*spr_dir), y-30, 27)
			tmp_hfx.depth = 30;
		}
		if (is_attack_pressed( DIR_LEFT )){
			set_attack(AT_FTILT);
			x = x+(hsp*tmp_x_mult);
			hsp = hsp*tmp_hsp_mult;
			spawn_base_dust(x-(28*spr_dir), y, "dash", -1)
			//sound_play(asset_get("mfx_star"),false,noone,0.4,1.3)
			sound_play(sound_get("ting"),false,noone,0.5,1.5)
			var tmp_hfx = spawn_hit_fx(x-(30*spr_dir), y-30, 27)
			tmp_hfx.depth = 30;
		}
	}
}
/*//nvm
if (state == PS_ATTACK_GROUND){
	ground_friction = ground_friction_atk;
}else{
	ground_friction = ground_friction_normal;
}*/

//once-per-airtime land
if (fsp_did){
	move_cooldown[AT_FSPECIAL] = 2;
	if (!free || state == PS_HITSTUN || state == PS_WALL_JUMP){
		fsp_did = false;
		move_cooldown[AT_FSPECIAL] = 0;
	}
}
if (dsp_did){
	move_cooldown[AT_DSPECIAL_2] = 2;
	if (!free || state == PS_HITSTUN || state == PS_WALL_JUMP){
		dsp_did = false;
		move_cooldown[AT_DSPECIAL_2] = 0;
	}
}

with(oPlayer){
	if (ushr_rainclouded){
		if (state!=PS_HITSTUN && state!=PS_HITSTUN_LAND){
			ushr_rainclouded_timer--;
		}else{
			if (!hitpause){
				ushr_rainclouded_timer-=0.33;
			}
		}
		//print(string(ushr_rainclouded_timer))
		outline_color = [ 31, 87, 126 ]
		init_shader();
		outline_color = [ 0, 0, 0 ];
		if (ushr_rainclouded_timer<=0 || state==PS_RESPAWN || state==PS_DEAD){
			init_shader();
			ushr_rainclouded = false;
			exit;
		}
	}
}
if (thanks_i_received_your_message_you_go_and_reset_now == true){
	signalling_all_my_besties_i_have_been_PARRIED = false;
	signalling_all_my_besties_i_have_been_HIT_by_this_player = -4;
}
if (signalling_all_my_besties_i_have_been_PARRIED && state!=PS_PRATFALL && state!= PS_PRATLAND){
	signalling_all_my_besties_i_have_been_PARRIED = false;
}
if (signalling_all_my_besties_i_have_been_HIT_by_this_player && state_cat!=SC_HITSTUN){
	signalling_all_my_besties_i_have_been_HIT_by_this_player = -4;
}


if (get_synced_var( player )==0){//A
	if (get_player_color( player ) == 7){ //towerofheaven
		if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
			outline_color=[35, 67, 49]
			init_shader();
		}
	}
	if (get_player_color(player) == 16 && get_gameplay_time() % 7 == 0 && point_distance(0, 0, hsp, vsp) > 2.5 && visible)
	{
		var fx = spawn_hit_fx(
			x + draw_x + (random_func(0, 8, false) - 4)*8,
			y + draw_y - random_func(1, 8, false)*8,
			fx_ashe_trail
		);
		fx.hsp = (random_func(2, 8, false) - 4)/4;
		fx.vsp = (random_func(3, 8, false) - 4)/2 - 1;
	}
}

if (get_synced_var( player )==0){//A
	if (get_player_color( player ) == 8){//sorbet
		init_shader();
	}
}
if (get_synced_var( player )==2){//C
	if (get_player_color( player ) == 2){//starburst
		init_shader();
	}
}
if (get_synced_var( player )==3){//D
	if (get_player_color( player ) == 1){//sorbet
		init_shader();
	}
	if (get_player_color( player ) == 10){//asayzll
		mightyfallen = true;
	}
}
if (get_synced_var( player )==4){//EXTRA??
	if (get_player_color( player ) == 0){//PSASBR
		madeonfinale = true;
	}
	if (get_player_color( player ) == 1){//ultragenesis
		//print("yeah?")
		init_shader();
	}
	if (get_player_color( player ) == 2){//champion
		init_shader();
	}
	if (get_player_color( player ) == 8){//grid
		init_shader();
	}
	if (get_player_color( player ) == 10){//hymn
		init_shader();
	}
	if (get_player_color( player ) == 11){//hymn
		init_shader();
	}
}

if (state==PS_DASH){
	//print(string(stamina));
	stamina--;
	if (stamina<=0){
		dash_speed = dash_speed_tire;
		dash_anim_speed = dash_anim_speed_tire;
	}
}else{stamina=stamina_max; dash_speed=dash_speed_normal; dash_anim_speed=dash_anim_speed_normal;}

//kinda runestuff

if (get_match_setting( SET_RUNES )){//if runes mode active
	if (has_rune( "O" )){
		initial_dash_time = 5;
		initial_dash_speed = 18;
		if (state==22 && state_timer==0) {
			sound_play(sound_get("dash"));
			
			var ARafterimage = instance_create(x, y, "obj_article3"); //y-42
			ARafterimage.player_id = id;
			ARafterimage.player = player;
			ARafterimage.spr_dir = spr_dir;
			ARafterimage.ar_a3_type = 1;
		}
	}
	if (has_rune( "A" )){
		gravity_speed = gravity_speed_normal;
	}
}

//testy
//print(string( (sin( get_gameplay_time()*0.8 )*4) ));




//=======================================================================================================================//


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
if (newdust != -4){
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
}
return newdust;



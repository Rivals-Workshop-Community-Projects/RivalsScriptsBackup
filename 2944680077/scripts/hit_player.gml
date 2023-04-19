//hitbox init, FOR PROJECTILES SPECIFICALLY

//bounces
switch(my_hitboxID.attack){
	case AT_FAIR:
		sound_play(sound_get("sm64_impact"));
	break;
	
	case AT_DAIR:
		if (my_hitboxID.hbox_num==1){
			if(voice_enabled == true){
    			snd_rng = random_func(0, 3, true);
    			if (snd_rng == 0) {
    			voice_id = "dairhit1";
        		voice_volume = 2;
        		voice_play();
    			}
    			else if (snd_rng == 1) {
    			voice_id = "dairhit2";
        		voice_volume = 2;
        		voice_play();
    			}
    			else if (snd_rng == 2) {
    			voice_id = "boing";
        		voice_volume = 2;
        		voice_play();
    			}
    		}
		}
		if (my_hitboxID.hbox_num<3){
			sound_play(sound_get("stomp"));
	    	old_vsp = -9;
	    	attack_end();
	    	destroy_hitboxes();
    		window = 3;
        	window_timer = 0;
        	
		}
        break;
        
    case AT_NSPECIAL:
    case AT_NSPECIAL_AIR:
		fireballs_out--;
        break;
        
    case AT_USPECIAL:
    	if my_hitboxID.hbox_num == 5 {
    		sound_play(sound_get("smb3_stomp"));
	    	old_vsp = -10;
	    	attack_end();
	    	destroy_hitboxes();
    		window = 7;
        	window_timer = 0;
        	if(voice_enabled == true){
    			snd_rng = random_func(0, 2, true);
    			if (snd_rng == 0) {
    			voice_id = "boing";
        		voice_volume = 2;
        		voice_play();
    			}
    		}
    	}
    	
    	if my_hitboxID.hbox_num == 1{
    		if(voice_enabled == true){
    			voice_id = "herewego64";
        		voice_volume = 2;
        		voice_play();
    		}
    	}
    
    	if my_hitboxID.hbox_num < 5 {
    		spawn_hit_fx( lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y-146,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), coin_fx );
    	}
    	if my_hitboxID.hbox_num < 4 {
    		sound_play(sound_get("melee_coin"))
    	}
    	if my_hitboxID.hbox_num == 4 {
    		sound_play(sound_get("melee_coin"), 0, noone, 1, 1.3)
    	}
    	
    	if my_hitboxID.hbox_num < 4 and !hit_player_obj.clone
		{
    		hit_player_obj.x = lerp(hit_player_obj.x,x+(spr_dir*50),0.5)
    		hit_player_obj.y = lerp(hit_player_obj.y,y-20+vsp,0.5)
		}
	break;
	
	case AT_FSPECIAL:
		if !hitpause
			sound_play(sound_get("smb3_stomp"));
	    old_vsp = -7;
	    old_hsp = 5 * spr_dir;
	    destroy_hitboxes();
    	window = 3;
        window_timer = 0;
        if(voice_enabled == true){
    			snd_rng = random_func(0, 2, true);
    			if (snd_rng == 0) {
    			voice_id = "boing";
        		voice_volume = 2;
        		voice_play();
    			}
    		}
    break;
    
    case AT_DSPECIAL:
    	if (my_hitboxID.hbox_num==1){
			sound_play(sound_get("smb3_stomp"));
			old_vsp = clamp(old_vsp, -12, -3);
	    	destroy_hitboxes();
    		window = 7;
        	window_timer = 0;
        	set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, 1);
		}
		
		if (my_hitboxID.hbox_num==2){
			sound_play(sound_get("smb3_stomp"));
			old_vsp = clamp(old_vsp, -12, -6);
	    	destroy_hitboxes();
    		window = 10;
        	window_timer = 0;
        	set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, 0);
		}
    break;

}

//sfx layering
switch(my_hitboxID.attack){
	
	case AT_FSTRONG:
		sound_play(sound_get("smrpg_punch"));
        break;
}

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
return newdust

#define voice_play()
voice_playing_sound = sound_play(sound_get("voc_" + voice_id), false, noone, voice_volume);
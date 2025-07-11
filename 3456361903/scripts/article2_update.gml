// // // // STATE 0 - START

if (init == 0){
    init = 1;
//do whatever to start out in update gml here if you want, very much optional

//this bit of code makes it so that if you have more than 1 of this article out in the stage, all the other ones you had around will be removed
//change the values of course, like change "obj_article2" accordingly to what article number this is or etc
//it can be safely removed or disabled
    with (asset_get("obj_article2")){
        if (id != other.id && player_id == other.player_id){
			if (state != 99){
			state = 99;
			state_timer = 0;
			}
        }
    }
}

// Clairen checks
if (place_meeting(x, y, asset_get("plasma_field_obj"))) {
    sound_play(asset_get("sfx_clairen_hit_weak"));
    spawn_hit_fx(x, y, HFX_CLA_PLASMA_PLUS);
    state = 99; // destroy
}

state_timer++; //progress the timer

if (state == 0){ //
	if (state_timer == 14) {
		//spawn_morph_hitbox();
	}
	state_end = 18; //duration of this state in frames
    //image_index = 0 + state_timer * 5 / summon_time;
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
    if (state_timer == state_end){//when the timer reaches end of this state's duration
        state = 1; //go to idle
        state_timer = 0; //reset timer manually
    }
}

// // // // STATE 1 - IDLE
if (state == 1){ //
	state_end = 30; //duration of this state in frames
    image_index = 5 + state_timer * 3 / state_end;
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
	active_time++
	
    if (state_timer == state_end){//when the timer reaches end of this state's duration
        state_timer = 0; //reset state timer
		image_index = 5; //you may have to reset the image_index to start of the loop manually
    }
    
    if (active_time >= 90) {
    	state = 99;
    	state_timer = 0;
    }
    	
    with (oPlayer) {
    	
	        if (player == other.owner && place_meeting(x, y, other) && state_cat != SC_HITSTUN && !hitpause && state != PS_DEAD && state != PS_RESPAWN ) {
	        	//jspd = other.bounce_speed
	        	jspd = other.bounce_speed
	        	if (state == PS_ATTACK_AIR && attack == AT_USPECIAL) jspd = other.bounce_speed_uspec;
	        	if (state == PS_ATTACK_AIR && attack == AT_NSPECIAL) jspd = other.bounce_speed_nspec;
	        	//
	        	x = lerp(x, other.x, 1)
	        	y = lerp(x, other.y, 1)
	        	vsp = jspd;
	        	if (state == PS_PRATFALL) set_state(PS_IDLE_AIR)
	        	hsp = hsp/2
	        	//
	        	just_bounced = true;
	        	//
	        	spawn_base_dust(other.x, other.y, "jump")
	        	spawn_base_dust(x, y-48, "djump")
	        	//
	        	other.state = 2;
	        	other.state_timer = 0;
	        	
		    }
	    }
	    
	//also activate from sure-you-cans/shurikens
	with (pHitBox) if ( player_id == other.player_id and place_meeting(x, y, other)) {
	    	if (attack == AT_JAB and hbox_num == 2) {
	    		hitbox_timer = 0;
	    		x = lerp(x, other.x, 1)
	        	y = lerp(x, other.y, 1)
	    		hsp = 0;
	    		vsp = -25;
	    		other.state = 2;
	        	other.state_timer = 0;
	    	}
	    }
}

// // // // STATE 2 - BOING ANIM
if (state == 2){ //
	if (state_timer == 1) {
		spawn_morph_hitbox();
	}
	state_end = 20; //duration of this state in frames
	
	if  (state_timer == 1) sound_play(sound_get("mm_noteblock"))
	
    if (state_timer == state_end){//when the timer reaches end of this state's duration
        state = 99;
    	state_timer = 0;
    }
}

// // // // STATE 99 - DISAPPEARING
//set state = 99 and state_timer = 0 to make it disappear with this state
if (state == 99){ //
	state_end = 10; //duration of this state in frames
    //image_index = 9 + state_timer * 3 / state_end;
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
    if (state_timer == state_end){//when the timer reaches end of this state's duration
        instance_destroy();//remove article
        exit;//exits the code (not 100% necessary but its good to be safe)
    }
}

//you can safely add more states, copypaste state 0 or so and change the state number

#define spawn_morph_hitbox
morph_hitbox = create_hitbox(AT_FSPECIAL, 2, x, y);
morph_boom_visual = spawn_hit_fx(x+12, y, player_id.hfx_sound);
morph_boom_visual.spr_dir = spr_dir
return morph_boom_visual;


// spawn_base_dust made by Supersonic
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;

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
    
    //
    //bar-kun additions (note: idk how fg_sprite work)
    //
    case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
    case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
	case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
    case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
    case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
    case "doublejump_small": 
    case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = angle;
return newdust;


//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_JAB || attack == AT_UTILT ||attack == AT_NSPECIAL_2 || attack == AT_USPECIAL_2|| attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_DSPECIAL_2 ||attack == AT_USPECIAL){
    trigger_b_reverse();
    can_fast_fall = false;
}


var no_hp = !hitpause;

switch (attack)
{
	case AT_USTRONG:
		can_move = false;
	    can_fast_fall = false;
	break;
	case AT_DAIR:
		if (window != 2) can_fast_fall = false;//makes it so that you can hitfall this move
		
        if (window == 1)
        {
            if (window_timer == 1) move_cooldown[AT_DAIR] = 40;
        }
	break;
	case AT_NSPECIAL:
		move_cooldown[AT_NSPECIAL] = 30;
	    can_wall_jump  = true;
	
		if(attack_pressed && lure_timer == 0 && (window == 1))
		{
		    lure_timer = 180;
		    set_attack(AT_NSPECIAL_2);
		    destroy_hitboxes();
		    attack_end();
		    can_fast_fall = false;
		    can_move = false;
		}
	break;
	case AT_DATTACK:
	if (get_gameplay_time() mod 4 == 0 and window < 4 and !hitpause)
	{
		var posy = round(random_func(4, 36, true)) - 18
        spawn_hit_fx(x,y+vsp+posy-24,star)
	}
	break;
	
	case AT_NSPECIAL_2:
	
	if(window == 2 && free)
    vsp *= .9;
    
		if (window == 2 && window_timer == 1) 
			instance_create(x+20*spr_dir,y-30,"obj_article1");
	break;
	
	case AT_FSPECIAL:
	
	move_cooldown[AT_FSPECIAL] = 30;
    can_wall_jump  = true;
    
	if (get_gameplay_time() mod 4 == 0 and window > 1 and !hitpause)
	{
		var posy = round(random_func(4, 40, true)) - 20
        spawn_hit_fx(x-(4*spr_dir),y+vsp+posy-26,star)
	}
	
	switch window
	{
		case 1:
			if (window_timer == 1) set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
		break;
		
		case 2:
		    if (attack_pressed && lure_timer == 0)
			{
			    lure_timer = 180;
			    set_attack(AT_FSPECIAL_2);
			    destroy_hitboxes();
			    attack_end();
			    can_fast_fall = false;
			    can_move = false;
			}
			
			if (special_pressed)
			{
			    set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 8);
			    window = 6;
			    window_timer = 0;
			    //vsp = -5;
			    can_fast_fall = false;
			    can_move = false;
			}
		break;
	}
    case AT_FSPECIAL_AIR:
    
	break;
	case AT_FSPECIAL_2:
		if (window == 2 && window_timer == 1) instance_create(x+0*spr_dir,y-30,"obj_article1");
	break;
	case AT_UAIR:
		if (window > 1) hud_offset = round(lerp(hud_offset, 130,0.16))
	break;
	case AT_USPECIAL:

    if (window == 3 && down_down && special_pressed){
        set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
        window = 4;
        window_timer = 0;
        vsp = -5;
        can_fast_fall = false;
        can_move = false;
    }
	
	
	if (get_gameplay_time() mod 4 == 0 and window > 1)
	{
		var posx = round(random_func(4, 8, true)) - 4
        spawn_hit_fx(x + posx+hsp,y-12+vsp,star)
	}
	
	can_move = false;
	
	if window == 1
	{
		set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
		vsp *= 0.9
		hsp *= 0.9
	}
	else if (window_timer == 1 and window == 2 and !hitpause)
	{
		vsp = -13
		hsp = 4*spr_dir
	}
	
    if (attack_pressed && hitpause && has_hit_player && lure_timer == 0 && (window == 2) and !hit_player_obj.activated_kill_effect and instance_exists(shoryu_obj) and shoryu_obj.state != PS_RESPAWN)
    {
        lure_timer = 180;
        afterImageTimer = 4
        shoryu_obj.hitstop = 30;
        shoryu_obj.hitpause = true;
        x = shoryu_obj.x + shoryu_obj.hsp;
        y = shoryu_obj.y + shoryu_obj.vsp - (shoryu_obj.char_height);
        // hsp = 0
        // vsp = 0
        shoryu_obj = -1;
        hitstop = 1;
        destroy_hitboxes();
        attack_end();
        set_attack(AT_USPECIAL_2);
        can_fast_fall = false;
        can_move = false;
        
    }
	break;
	case AT_USPECIAL_2:
	
	can_move = false;
	can_fast_fall = false;
    fall_through = !(has_hit_player && window == 3)
    
    var slow = false;
    switch window
    {
    	default:
    		slow = true;
    	break;
    	case 2:
    		if (window_timer == 1 and !hitpause)
    		{
    			vsp = 14;
    		}
    		else
    		{
    			slow = true;
    		}
    	break;
    }
    
    if (slow)
    {
    	vsp = abs(vsp) > 1 ? vsp*0.9 : 0;
    	hsp = abs(hsp) > 1 ? hsp*0.9 : 0;
    }
	
	break;
	
	case AT_DSPECIAL:
	move_cooldown[AT_DSPECIAL] = 15;
	var dir = right_down - left_down;
	var dir_correspond = (spr_dir == dir);
	
	if(ewgf_timer > 0)
    {
        switch(ewgf_input)
        {
            case 0:
                if (joy_pad_idle) ewgf_input++;
            break;
            case 1:
                if (down_down && (dir_correspond && dir != 0))
                {
                	ewgf_input = 3;
                	ewgf_timer = 10;
                }
                else if (down_down)
                {
                    ewgf_input++;
                }
            break;
            case 2:
                if(down_down && (dir_correspond && dir != 0))
                {
                	ewgf_input++;
                	ewgf_timer = 10;
                }
            break;
            case 3:
                if(attack_pressed && !free)
                {
                    if(ewgf_timer == 9)
                    {  
                        sound_play(asset_get("sfx_absa_singlezap1"));
                        white_flash_timer = 10;
                        set_hitbox_value(AT_EXTRA_1, 1, HG_EXTRA_HITPAUSE, 15);
                    }
                    else
                        reset_hitbox_value(AT_EXTRA_1, 1, HG_EXTRA_HITPAUSE);
                    set_attack(AT_EXTRA_1);
                }
            break;
        }
    }
	
	
	switch (window)
	{
		case 1:
			if (window_timer == 1) set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
		break;
		case 2:
		if (attack_pressed && lure_timer == 0)
		{
			lure_timer = 180;
		    set_attack(AT_DSPECIAL_2);
		    destroy_hitboxes();
		    attack_end();
		    can_fast_fall = false;
		    can_move = false;
		    spr_dir = (dir == 0) ? spr_dir : dir;
		}
		
		case 3:
			if ((special_pressed or shield_pressed) and dir != 0)
			{
				set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 5 + !dir_correspond);
				window = 5 + !dir_correspond;
				
				afterImageTimer = 4
			    window_timer = 0;
			    vsp = round(lerp(vsp, 0, 0.1));
			    can_fast_fall = false;
			    can_move = false;
			}
		break;
		
		case 5:
		case 6:
		if (get_training_cpu_action() != CPU_FIGHT && taunt_pressed) 
		{
			sound_play(asset_get("sfx_absa_singlezap1"));
			white_flash_timer = 10;
			set_hitbox_value(AT_EXTRA_1, 1, HG_EXTRA_HITPAUSE, 15);
			set_attack(AT_EXTRA_1);
		}
		if (free) vsp *= .9;
		
		//EWGF Input
		if (window_timer <= 1)
		{
			ewgf_timer = 20;
			ewgf_input = 0;
		}
		break;
	}

	break;
	
	case AT_EXTRA_1:
	    if(special_pressed && (left_pressed xor right_pressed) && window == 3 && has_hit)
		{
		    var d = right_down - left_down;
		    spr_dir = d;
		    
		    set_attack(AT_DSPECIAL);
		    window = 5;
		    window_timer = 0;
		}
	break;
	
	
	
	
}
/*
if (attack == AT_DSPECIAL){
    if (window == 2 && !was_parried){
        can_jump = true;
    }
    can_fast_fall = false;
    can_move = false
}
*/

//sfx

if (no_hp)
{
	var play_sound = noone;
	var s_window = 1;
	var s_frame = 1;
	
	switch (attack)
	{
		case AT_FSTRONG:
			play_sound = asset_get( "sfx_bubblemouth");
			s_frame = 2;
		break;
		case AT_USTRONG:
			play_sound = asset_get( "sfx_swipe_heavy1");
			s_window = 3;
		break;
		case AT_DAIR:
			play_sound = asset_get( "sfx_orcane_dsmash" );
			s_frame = 11;
		break;
		case AT_FSPECIAL:
			play_sound = asset_get( "sfx_orcane_fspecial" );
			s_frame = 8;
		break;
		case AT_USPECIAL:
			play_sound = asset_get( "sfx_orcane_fspecial" );
			s_frame = 6;
		break;
		case AT_NSPECIAL_2:
			play_sound = asset_get( "sfx_swipe_weak2" );
			s_frame = 11;
		break;
	}
	
	if (play_sound != noone and window == s_window and window_timer == s_frame)
	{
		sound_play(play_sound);
	}

}

//Ledge Snap 
if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR && window == 2){
    can_fast_fall = false;
    if (window == 1 && window_timer == 1){
        moved_up = false;
        //reset the vspeed to the value in fspecial_air.gml
        reset_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED);
    }
    if (window == 2){
        // MOVE UP AT LEDGE
        if (!moved_up){
            if (free && place_meeting(x+hsp,y,asset_get("par_block"))){
                for (var i = 0; i < 40; i++){
                    if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))){
                        y -= i;
                        moved_up = true;
                        break;
                    }
                }
            }
        }
}
}


// var dust_tospawn = noone;
// var s_window = 1;
// var s_frame = 1;
// var dir = 0;

// switch (attack)
// {

// }

// if (dust_tospawn != noone and window == s_window and window_timer == s_frame)
// {
// 	sound_play(play_sound);
// }

// dust
if (attack == AT_FSPECIAL && window_timer == 1 && window == 2){
    spawn_base_dust(x, y, "dash_start");}
if (attack == AT_FSPECIAL_2 && window_timer == 1 && window == 2){
    spawn_base_dust(x, y, "jump");}
if (attack == AT_DSPECIAL_2 && window_timer == 3 && window == 1 ){
    spawn_base_dust(x, y, "dash_start");}
//dust dspecial
if (attack == AT_DSPECIAL && window_timer == 1 && window == 2 ){
    spawn_base_dust(x, y, "land");}
if (attack == AT_DSPECIAL && window_timer == 1 && window == 5 && spr_dir == 1){
    spawn_base_dust(x, y, "dash_start", 1);}
if (attack == AT_DSPECIAL && window_timer == 1 && window == 6 && spr_dir == 1){
    spawn_base_dust(x, y, "dash_start", -1);}
if (attack == AT_DSPECIAL && window_timer == 1 && window == 5 && spr_dir == -1){
    spawn_base_dust(x, y, "dash_start", -1);}
if (attack == AT_DSPECIAL && window_timer == 1 && window == 6 && spr_dir == -1){
    spawn_base_dust(x, y, "dash_start", 1);}
// dust    
if (attack == AT_NSPECIAL && window_timer == 1 && window == 2){
    spawn_base_dust(x, y, "dash_start");}
if (attack == AT_NSPECIAL_2 && window_timer == 1 && window == 2){
    spawn_base_dust(x, y, "dash_start");}
if (attack == AT_USPECIAL && window_timer == 1 && window == 2){
    spawn_base_dust(x, y, "doublejump");}
//if (attack == AT_USPECIAL_2 && window_timer == 1 && window == 2){
//    spawn_base_dust(x, y, "n_wavedash");}

//Taunt Hold
//if attack = AT_TAUNT && window == 3  && taunt_down && window_timer == 25 {
//    window_timer = 25;
//}
//hitbox switch
if (attack = AT_NSPECIAL_2 || attack = AT_DSPECIAL_2 || attack = AT_FSPECIAL_2 || attack = AT_USPECIAL_2 || attack == AT_EXTRA_1) 
	hurtboxID.sprite_index = get_attack_value(attack,AG_HURTBOX_SPRITE);

#define spawn_base_dust
/// @param x
/// @param y
/// @param name
/// @param dir = 0
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
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
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);

if !instance_exists(newdust) return;

newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
return newdust;
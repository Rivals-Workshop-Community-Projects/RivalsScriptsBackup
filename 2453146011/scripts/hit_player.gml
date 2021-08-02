// Hit player

var monarch = self;

with(hit_player_obj) {
	last_monarch = monarch;
}

last_hit_player = hit_player_obj;

// Spikes clear cooldown
if(get_hitbox_angle(my_hitboxID) <= 290 && get_hitbox_angle(my_hitboxID) >= 250)
{
	hit_player_obj.in_portal = false;
	hit_player_obj.portal_cooldown = 0;
}

if(my_hitboxID.attack = AT_USPECIAL){
    x = other.x;
    
    if(other.free == true && free == true)
    {
        y = other.y;
    }
}

if(my_hitboxID.attack = AT_BAIR && my_hitboxID.hbox_num == 1 && hit_player_obj.clone == false){
	
	if(attack_down || (left_stick_down && spr_dir == 1) || (right_stick_down && spr_dir == -1))
	{
		var BKB = get_hitbox_value(AT_BAIR,1,HG_BASE_KNOCKBACK);
	    var KBA = hit_player_obj.knockback_adj;
	    var KBS = get_hitbox_value(AT_BAIR,1,HG_KNOCKBACK_SCALING);
	    var DMG = get_hitbox_value(AT_BAIR,1,HG_DAMAGE);
	    var BHP = get_hitbox_value(AT_BAIR,1,HG_BASE_HITPAUSE);
	    var HPS = get_hitbox_value(AT_BAIR,1,HG_HITPAUSE_SCALING);
	    
	    spike_time = BKB * 4 * ((KBA - 1) * 0.6 + 1) + DMG * 0.12 * KBS * 4 * 0.65 * KBA;
	    spike_time+=BHP+HPS*.5;
	    
	    spawn_hit_fx(x,y,teleport_lite_start_smaller);
	    butterflyFX(70,70,4,-10*spr_dir,-40);
	    
	    
	    
	    can_fast_fall = false;
	    fast_falling = false;
	    do_a_fast_fall = false;
	    free = true;
	    play_sound = true;
	}
}

// Up air jank
if(my_hitboxID.attack = AT_UAIR && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 3) && hit_player_obj.clone == false) {
	move_cooldown[AT_UAIR] = 60;
	
	spawn_hit_fx(x,y,teleport_lite_start_smaller);
	spawn_hit_fx(hit_player_obj.x-80*spr_dir,hit_player_obj.y-60,hitfx9);
    butterflyFX(70,70,4,-10*spr_dir,-40);	
    
    can_fast_fall = false;
    fast_falling = false;
    do_a_fast_fall = false;
    free = true;
    old_vsp = -10;
    vsp = -10;
    
    last_teleport_x = x;
    last_teleport_y = y;
    
    if(state != PS_ATTACK_AIR || my_hitboxID.hbox_num == 3)
    {
	    set_state(PS_ATTACK_AIR);
	    set_attack(AT_UAIR);
	    attack = AT_UAIR;
	    
	    window = 3;
		window_timer = 0;

    }
    has_hit_player = true;

    sound_stop(sound_get("monarch_wooshspin"));
    

}

// Dspec
if(my_hitboxID.attack == AT_DSPECIAL && hit_player_obj.clone == false){
	if(my_hitboxID.hbox_num == 1){
		if(time_knife != noone){
			time_knife.stuck_player = hit_player_obj;
			time_knife.shake_timer = 10;
		}
		sound_play(sound_get("monarch_darthitplayer"));
	}
	else
	{
		spawn_hit_fx(hit_player_obj.x ,hit_player_obj.y- hit_player_obj.char_height/2,hitfx11);
	}
}

if(my_hitboxID.attack = AT_FSPECIAL){
	var hpTime = 15;
	
	// Cooldown
	move_cooldown[AT_FSPECIAL] = 40;
	
    //Afterimage
    with(hit_player_obj)
    {
        portal_afterimage.timer = 10;
    	portal_afterimage.sprite_index = sprite_index;
    	portal_afterimage.image_index = image_index;
    	portal_afterimage.x = x;
    	portal_afterimage.y = y;
    	portal_afterimage.spr_dir = spr_dir;
    	last_pcolor = 1;
    	portal_white = 15;
    	old_hsp = hsp;
    	old_vsp = vsp;
    	vsp_prev = vsp;
    	hsp_prev = hsp;
    	
    	with(monarch) spawn_hit_fx(other.x,other.y-(char_height/1.5),newtprings);
    	
		if(monarch.fspec_charged){

    		// Charged box
			with(monarch) {
				set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 8);
				create_hitbox(AT_DSPECIAL,2,ceil(x),ceil(y)-15);
				reset_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE);
				sound_play(sound_get("monarch_gunhit2"),false,0,0.8,1.1);
				
				spawn_hit_fx(x,y,hitfx12);
			}
		}
		else{
	    	hitpause = true;
	    	hitstop = hpTime;
	    	hitstop_full = hpTime;
		}
    }
    
    portal_afterimage.timer = 10;
    portal_afterimage.sprite_index = sprite_index;
    portal_afterimage.image_index = image_index;
    portal_afterimage.x = x;
    portal_afterimage.y = y;
    portal_afterimage.spr_dir = spr_dir;
    last_pcolor = 1;
    portal_white = 15;
    old_hsp = hsp;
    old_vsp = vsp;
    vsp_prev = vsp;
    hsp_prev = hsp;
    
    spawn_hit_fx(other.x,other.y-(char_height/1.5),newtprings);
    
    //hitpause = true;
    //hitstop = hpTime;
    //hitstop_full = hpTime;
    
	
    sound_play(sound_get("monarch_fspecialhit"))
    
    
    var xtemp = x;
    var ytemp = y;
    
    x = other.x;
    y = other.y;
    
    other.x = xtemp;
    other.y = ytemp;
    
    spr_dir *=-1;
    hit_fspec = true;
    fspec_line_timer = 15;
    
    // Knife special interaction
    if(time_knife != noone){
    	if(time_knife.stuck_player == hit_player_obj){
    		time_knife.fspec_trigger = true;
    	}
    }
    
    //fx
    // spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-hit_player_obj.char_height/2,star_faster);
    // butterflyFX(100,100,10,hit_player_obj.x-x,hit_player_obj.y-y-hit_player_obj.char_height/2);
    

}

if(my_hitboxID.attack == AT_UTILT && window > 1)
{
	with(pHitBox) if((orig_player == other.player && (attack == AT_UTILT))) destroyed = true;
	vsp_prev = vsp;
	
	old_hsp = hsp;
    old_vsp = vsp;
	
	hitstop = hit_player_obj.hitstop;
	hitstop_full = hit_player_obj.hitstop_full;
	hitpause = true;
}

// if(my_hitboxID.attack = AT_FSTRONG){

// }

slashangle = get_hitbox_angle(my_hitboxID) - (spr_dir == -1 ? 180 : 0);

#define butterflyFX(_xrange,_yrange,_density,_xoff,_yoff)
{
	// Save original direction
	var dir_storage = spr_dir;
	var i = 0;
	
	// Define furthest left top point
	_xoff -= _xrange/2;
	_yoff -= _yrange/2;
	
	// Cap density
	_density = min(_density,200);
	
	// Loop for as many bugs need spawning
	repeat(_density)
	{
		// Set spr dir to random direction
		spr_dir = random_func(i % 24,2,true) == 0 ? 1 : -1;
		
		// Funky math
		spawn_hit_fx( x + _xoff + random_func_2(i,_xrange,true), y + _yoff + random_func_2(i+1,_yrange,true), butterflies[random_func_2(i+2,7,true)+1]);
		
		// Increment counter
		i++;
	}
	
	spr_dir = dir_storage;
}
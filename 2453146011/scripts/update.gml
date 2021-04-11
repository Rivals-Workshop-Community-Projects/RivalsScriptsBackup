// Update

var monarch = self;

// Munophone
user_event(14);


//#region Player trail
if(!lite)
with(oPlayer) if(player != other.player)
{

	if(!(state == 12 || state == 7 || state == 0 || state == SC_HITSTUN) && other_arrayindex > 0) other_array_cleared = false;
	
	if((state == 12 || state == 7 || state == 0 || state == SC_HITSTUN) && hit_player_obj == other && !hitpause)
	{
		other_arrayindex++;
		other_afterimage_array[other_arrayindex] = {x:x,y:y,sprite_index:sprite_index,image_index:image_index,color: 
		other_afterimage_array[other_arrayindex-1].color == other.monDarkRed || other_afterimage_array[other_arrayindex-2].color == other.monDarkRed? other.monRed : 
		other_afterimage_array[other_arrayindex-1].color == other.monRed || other_afterimage_array[other_arrayindex-2].color == other.monRed ? other.monDarkPurple : 
		other_afterimage_array[other_arrayindex-1].color == other.monDarkPurple || other_afterimage_array[other_arrayindex-2].color == other.monDarkPurple? other.monPurple : 
		other_afterimage_array[other_arrayindex-1].color == other.monPurple || other_afterimage_array[other_arrayindex-2].color == other.monPurple? other.monBlue	:
		other.monLightBlue
		};
		
		other_array_cleared = false;
		black_screen = other.black_screen;
	}
	else if(other_array_cleared == false)
	{
		other_array_cleared = true;
		other_arrayindex = 0;
		
		var i = 0;
		repeat(100)
		{
			other_afterimage_array[i] = -1;
			i++;
		}
	}
} 
//#endregion


//#region Blood fx
if(!lite)
if(blood_timer != 0)
{
	blood_timer--;
	
	if(blood_timer == 0)
	{
		if(attack == AT_FSTRONG)
			var bloodfx = spawn_hit_fx(hit_player_obj.x - (60*hit_player_obj.spr_dir),hit_player_obj.y-90,blood);
		else if(attack == AT_USTRONG)
		{
			spr_dir*=-1;
			var bloodfx = spawn_hit_fx(hit_player_obj.x + (spr_dir*40),hit_player_obj.y-120,blood2);
			spr_dir*=-1;
		}
		else if(attack == AT_DSTRONG)
		{
			spr_dir*=-1;
			var bloodfx = spawn_hit_fx(hit_player_obj.x - (60*hit_player_obj.spr_dir),hit_player_obj.y-90,blood);
			spr_dir*=-1;
		}
	    bloodfx.depth = depth - 999;
	}
}
//#endregion


//#region Triple jump
if(djumps == 1) {djump_speed = djump_speed_2}
else djump_speed = djump_speed_1;
//#endregion

//#region Height reset
if(state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)
{
	char_height = original_char_height;
	bair_tp_queue = false;
}
//#endregion

//#region Starburst stuff
if(!lite)
if(starcounter > 0) 
{
	starcounter--;
	var count = 20-starcounter;
	var cubic = (1-((1-starcounter)*(1-starcounter)*(1-starcounter)))/600;
	
	var i = -1;
	repeat(staramount)
	{
		i++;
		if(starArray[i] == noone) continue;
		starArray[i].x+=starArray[i].hsp;
		starArray[i].y-=10*sin((3.14*(count*1.2+cubic))/(10+starArray[i].vsp));
	}
} else staramount = 0;
//#endregion

//#region Slash animation
var hbAttack = 0;
var hbNum = 0

if(variable_instance_exists(self,"my_hitboxID")) with(my_hitboxID){
	hbAttack = attack;
	hbNum = hbox_num;
}

if(!lite)
if((has_hit_player && hitpause && attack != AT_UTILT && attack != AT_BAIR &&
!(
// All the gunshot attacks shouldn't trigger slash
(hbAttack == AT_DTILT	&&	hbNum == 1) ||
(hbAttack == AT_JAB 	&&	hbNum == 3) ||
(hbAttack == AT_USTRONG &&	hbNum == 7) ||
(hbAttack == AT_DATTACK &&	hbNum == 3) ||
(hbAttack == AT_UTILT) 
)) 
|| slashsub > 0) slashsub += .5;

if(slashsub >= 6 && !hitpause) slashsub = 0;
//#endregion


//#region Bair stuff
if(spike_time != 0)
{
	// Freeze
	hsp = 0;
	vsp = 0;
	
	// Get in position
	x = hit_player_obj.x;
	y = hit_player_obj.y - hit_player_obj.char_height*1.2;
	
	// SFX
	if(play_sound) sound_play(sound_get("monarch_smallblink1"));
	play_sound = false;
	
	// Dissapear
	draw_indicator = false;
	invincible = true;
	destroy_hitboxes();
	
	// Decrease counter
	spike_time--;
	
	// Moment to teleport
	if(spike_time <= get_window_value(AT_BAIR,4,AG_WINDOW_LENGTH)){
		
		
		// Queue next part
		bair_tp_queue = true;
		
		// Reset counter
		spike_time = 0;
		
		// Make sure not in hp
		hitpause = false;
		invincible = false;
		
		// FX
		treturn = spawn_hit_fx( x,y, teleport_lite_return );
		treturn.depth = depth-1;
	
		butterflyFX(70,100,4,-10*spr_dir,-40);
		sound_play(sound_get("monarch_smallblink2"));
		
	}
	
	// Twinkle fx
	if(floor(spike_time) == 12) sound_play(sound_get("monarch_twinkle"))
	
	// Keep window in place
	window_timer = 0;
	window = 4;
} 
if(spike_time < 0) spike_time = 0;

if(bair_tp_queue && attack == AT_BAIR && state == PS_ATTACK_AIR)
{
	//Telemaport
	invincible = false;
	
	x = hit_player_obj.x;
	y = hit_player_obj.y - hit_player_obj.char_height*1.2;
}

// Failsafe
if(attack != AT_BAIR || state != PS_ATTACK_AIR){
	bair_tp_queue = false;
	spike_time = 0;
}
//#endregion



// Trail fx
var i = 0;

if(!lite)
repeat(2)
{
	// If lifetime is bigger than 0
	if(trailfx[i].lifetime > 0)
	{
		// Tick down
		trailfx[i].lifetime--;
	
		// Random swooshy
		trailfx[i].hsp+=random_func(i,5,true)-2;
		trailfx[i].vsp+=random_func(i,5,true)-2;
		
		// Clamp speed
		var clampMax = -trailfx[i].lifetime-1;
		trailfx[i].hsp = clamp(trailfx[i].hsp,clampMax,clampMax*-1)
		trailfx[i].vsp = clamp(trailfx[i].vsp,clampMax,clampMax*-1)
		
		
		var j = 10;
		repeat(j)
		{
			// Move
			trailfx[i].x += trailfx[i].hsp/j;
			trailfx[i].y += trailfx[i].vsp/j;
			
			// Spawn fx
			var tfx = spawn_hit_fx(trailfx[i].x,trailfx[i].y,trail);
			tfx.depth = depth - 1;
			
			// Align to grid
			if(tfx.x%2 != x%2) tfx.x+=sign(trailfx[i].hsp);
			if(tfx.y%2 != y%2) tfx.y+=sign(trailfx[i].vsp);

		}
	}
	i++;
}


// Airdodge stuff
if(state == PS_AIR_DODGE)
{
	// if(state_timer < 1) { sound_play(sound_get("monarch_smallblink1"))}
	// if(state_timer == 5) { sound_play(sound_get("monarch_smallblink2"))}
	
	if(state_timer == 4) {var s = spawn_hit_fx(x+hsp*2,y,teleport_lite_start_smaller);  s.depth = depth-1;} 
	//if(state_timer == 10) {var s = spawn_hit_fx(x+hsp*2,y+vsp*4,teleport_lite_return_smaller); s.depth = depth-1; s.spr_dir*=-1;}
	if(state_timer == 11){afterimage_array[0] = {x:x+hsp,y:y+vsp,sprite_index:sprite_index,image_index:image_index+2,color:monDarkRed}}
	if(state_timer == 12){
				
	    portal_afterimage.timer = 12;
	    portal_afterimage.sprite_index = sprite_index;
	    portal_afterimage.image_index = image_index;
	    portal_afterimage.x = x+hsp;
	    portal_afterimage.y = y+vsp;
	    portal_afterimage.spr_dir = spr_dir;
	    last_pcolor = 2;}
	
	if(state_timer >=5 && state_timer <= 12) butterflyFX(40,40,1,hsp,-40);
}

// Removes the 1 parry frame display on rolls
if(state == 30 && (spr_dir == 1 ? right_down : left_down)) {set_state(PS_ROLL_FORWARD)}
if( state == 30 && (spr_dir == 1 ? left_down : right_down) ) {set_state(PS_ROLL_BACKWARD)}

// Roll stuff
if(state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD)
{
	// if(state_timer < 1) { sound_play(sound_get("monarch_smallblink1"))}
	// if(state_timer == 12) { sound_play(sound_get("monarch_smallblink2"))}
	
	if(state_timer == 3) {spawn_hit_fx(x+hsp*2,y,teleport_lite_start_smaller);}  // FX
	//if(state_timer == 16) {var s = spawn_hit_fx(x+hsp*3,y,teleport_lite_return_smaller); s.depth = depth-1}
	if(state_timer == 15){afterimage_array[0] = {x:x+hsp*2,y:y,sprite_index:sprite_index,image_index:image_index+1,color:monDarkRed}}; // Afterimage trail
	if(state_timer >= 16) { 
				
	    portal_afterimage.timer = 12;
	    portal_afterimage.sprite_index = sprite_index;
	    portal_afterimage.image_index = image_index;
	    portal_afterimage.x = x+hsp;
	    portal_afterimage.y = y;
	    portal_afterimage.spr_dir = spr_dir;
	    last_pcolor = 2;
	}; // Red overlay
	
	if(state_timer >=1 && state_timer <= 20 && state_timer % 2 == 0) butterflyFX(40,40,1,hsp,-40);
}




// Tech fx
if(state == PS_TECH_GROUND)
{
	array_cleared = false;
	
	// FX
	if(state_timer == 1)
	{
		treturn = spawn_hit_fx( x,y, teleport_lite_start_smaller_slower );
		treturn.depth = depth-1;
	
		butterflyFX(70,100,4,-10*spr_dir,-40);
		sound_play(sound_get("monarch_smallblink1"));
	}
	

	if(state_timer == 16)
	{
		treturn2 = spawn_hit_fx( x,y, teleport_lite_return_slower );
		treturn2.depth = depth-1;
	
		butterflyFX(70,100,4,-10*spr_dir,-40);
		sound_play(sound_get("monarch_smallblink2"));
	}
}
if(state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD)
{
	
	array_cleared = false;
	
	// FX
	if(state_timer == 1)
	{
		treturn = spawn_hit_fx( x,y, teleport_lite_start_slower );
		treturn.depth = depth-1;
	
		butterflyFX(70,100,4,-10*spr_dir,-40);
		sound_play(sound_get("monarch_smallblink1"));
	}
	
	if(state_timer == 15){afterimage_array[0] = {x:x+hsp*2,y:y,sprite_index:sprite_index,image_index:image_index+1,color:monDarkRed}}; // Afterimage trail
	
	if(state_timer >= 16) { 
				
	    portal_afterimage.timer = 12;
	    portal_afterimage.sprite_index = sprite_index;
	    portal_afterimage.image_index = image_index;
	    portal_afterimage.x = x+hsp;
	    portal_afterimage.y = y;
	    portal_afterimage.spr_dir = spr_dir;
	    last_pcolor = 2;
	}; // Red overlay
	
	if(state_timer == 20)
	{
		treturn2 = spawn_hit_fx( x,y, teleport_lite_return_slower );
		treturn2.depth = depth-1;
	
		butterflyFX(70,100,4,-10*spr_dir,-40);
		sound_play(sound_get("monarch_smallblink2"));
	}
	
	if(state_timer >=1 && state_timer <= 20 && state_timer % 2 == 0) butterflyFX(40,40,1,hsp,-40);
}

// Waveland fx
if(state == PS_WAVELAND){	 
	if(state_timer < 1) afterimage_array[0] = {x:x+hsp*2,y:y,sprite_index:sprite_index,image_index:image_index+1,color:monDarkRed}
	
	portal_afterimage.timer = 12;
	portal_afterimage.sprite_index = sprite_index;
	portal_afterimage.image_index = image_index;
	portal_afterimage.x = x+hsp;
	portal_afterimage.y = y;
	portal_afterimage.spr_dir = spr_dir;
	last_pcolor = 1;
}


// Player trail for me
if(!lite)
if( ((state == 34 || state == 33) && state_timer > 15) || (state == PS_AIR_DODGE && state_timer > 11) || state == PS_WAVELAND)
{
	arrayindex++;
	afterimage_array[arrayindex] = {x:x,y:y,sprite_index:sprite_index,image_index:image_index,color: 
	afterimage_array[arrayindex-1].color == monDarkRed || afterimage_array[arrayindex-2].color == monDarkRed? monRed : 
	afterimage_array[arrayindex-1].color == monRed || afterimage_array[arrayindex-2].color == monRed ? monDarkPurple : 
	afterimage_array[arrayindex-1].color == monDarkPurple || afterimage_array[arrayindex-2].color == monDarkPurple? monPurple : 
	afterimage_array[arrayindex-1].color == monPurple || afterimage_array[arrayindex-2].color == monPurple? monBlue	:
	monLightBlue
	};
	
	array_cleared = false;
}
else if(array_cleared == false)
{
	array_cleared = true;
	arrayindex = 0;
	
	var i = 0;
	repeat(100)
	{
		afterimage_array[i] = -1;
		i++;
	}
}

// // Leaving this here in case I need it - get var names
// with(hit_player_obj){
// 	var p = variable_instance_get_names(self)
// 	var i = 0;
// 	repeat(590){
// 		if(variable_instance_get(self,p[i]) == hsp)print_debug(p[i])
// 		i++;
// 	}
// 	print_debug("hsp = " + string(hsp))
// }

// Respawn animation
if(state == PS_RESPAWN){
	respawn_flash = 10;
	charges = 0;
	
	// Reset stuff
    if(time_knife != noone) with(time_knife) x = -1;
}
else respawn_flash--;
if(prev_state == PS_RESPAWN && state_timer < 1){
	spawn_hit_fx(room_width/2,room_height/2,plat_end);
}

// Upspecial pratfall
if(!free || state == PS_WALL_JUMP) 
{
	uspecial_buffer = false;
}

if(uspecial_buffer && state == PS_IDLE_AIR)
{
	if(!has_hit_player) set_state(PS_PRATFALL);
	uspecial_buffer = false;
}


//#region Intro

if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 16) {
    draw_indicator = false;
    
} 
if (introTimer < liteModeTime)
	if(taunt_pressed && !lite) lite = true;

if(introTimer == 16){
	play_sound = false;
	draw_indicator = true;
}


if(introTimer == 10 && !play_sound) {
	sound_play(sound_get("monarch_appear"),false,0,0.4,1.02);
	play_sound = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.

//#endregion

// Fstrong galaxy
if(has_hit_player && (attack == AT_DSTRONG || attack == AT_FSTRONG || (attack == AT_USTRONG && window == 5)))
{
	has_hit_player = false;
	if(hit_player_obj.activated_kill_effect){
		if(!lite)
		{
		    black_screen = true;
			blood_timer = 2;
			
			hit_player_obj.hitstop +=8;
			hitstop+=8;
		}
		if(attack != AT_USTRONG)sound_play(sound_get("monarch_fstronghit"))
    } else sound_play(sound_get("monarch_knifehit3"))
}

if(hitpause == false) black_screen = false;

// With hitbox stuff
with(pHitBox){
    in_portal = false;
    portal_timer = 2;
    
    // USpecial Proj
    if((orig_player == other.player && (attack == AT_USPECIAL) && hbox_num == 1))
    {
        if(!destroyed && 
        (collision_circle(x+20,y, 10, asset_get("par_block"), true,true) != noone || 
        (collision_circle(x,y, 10, asset_get("par_jumpthrough"), true,true) != noone && vsp > 0)
        )
        )
        {
            destroyed = true;
            
            other.x = x;
            other.y = y + 10;
        }
    }
    
    // NSpecial Proj
    if((orig_player == other.player && (attack == AT_NSPECIAL) && hbox_num == 1) && init)
    {
        // Set portal 1 or 2
        if(hitbox_timer == 1)
        {
            if(other.special_held)
            {
                is_portal_1 = false;
            }
        }
        
		
        
        // Check wall
        var rightWall = place_meeting(x+25, y, asset_get("par_block"));
        var leftWall = place_meeting(x-25, y, asset_get("par_block"));
        
        // Check ceil
        var ceilPlat = place_meeting(x, y, asset_get("par_block"));
        var ceilFloor = place_meeting(x, y-15, asset_get("par_jumpthrough"));
        
        // Priorizie walls
        if(rightWall || leftWall)
        {
        	ceilPlat = null;
        	ceilFloor = null;
        }

        
        // if(!ceilPlat && !ceilFloor)
        //     canPlacePortal = true;
        canPlacePortal = true;
         
        // Cant place on ceiling if shot horizontally  
        if(other.throw_dir == "right" || other.throw_dir == "left")
        {
            ceilFloor = noone;
            ceilPlat = noone;
        }
        
        if(other.throw_dir == "up" || other.throw_dir == "down")
        {
            rightWall = noone;
            leftWall = noone;
            if(place_meeting(x+25, y, asset_get("par_block"))) x-=25
 
        }
        
       
        // Check floor
        if(canPlacePortal && (ceilPlat || (ceilFloor && (other.throw_dir == "up" || other.throw_dir == "down")) || rightWall || leftWall || !destroyed && (collision_circle(x,y, 15, asset_get("par_block"), true,true) != noone || 
        
        (  (collision_circle(x,y,15, asset_get("par_jumpthrough"), true,true) != noone) && (other.throw_dir == "up" || other.throw_dir == "down")  )
        
        )))
        {
            destroyed = true;

            
            // Yes, I'm using a with statement in a with statement to get back to the player
            // Sue me
            
            
            
            // Set ID
            with(other)
            {
            	
                if(other.is_portal_1)
                {
                	
                	//Fx
            		butterflyFX(60,60,15,other.x - x, other.y - y - 10);
            	
                    // Delete old portal
                    instance_destroy(portal_1);
                    portal_1 = noone;
                    
                    // Spawn new portal
                    portal_1 = instance_create(other.x, other.y+ (ceilFloor == 1 ? -10 : 10), "obj_article1")
                    portal_1.portal_id = 1;
                    
					

			
                    if(collision_circle(other.x,other.y, 5, asset_get("par_jumpthrough"), true,true) != noone)
                    {
                        portal_1.platform = collision_circle(other.x,other.y, 5, asset_get("par_jumpthrough"), true,true);
                    }
                    
                    
                    
                    // Wall specific stuff
                    if((throw_dir == "front" && spr_dir == 1) ||(throw_dir == "back" && spr_dir == -1))
                    {
                    	
                        portal_1.image_angle += 90;
                        portal_1.isWall = true;
                        portal_1.rightWall = true;
                        //portal_1.x+=33;
                        portal_1.y-=15;
                        
                        var limit = 100;
                        exit;
						while( !place_meeting(portal_1.x+20,portal_1.y-34,asset_get("par_block"))){
							portal_1.y++;
							
							limit--;
							if(limit == 0){
								limit = 100;
								break;
							}
						}
                    	
						while( place_meeting(portal_1.x,portal_1.y,asset_get("par_block"))) portal_1.x--;
						while(portal_1.y > room_height-100) portal_1.y--;
						
                    }
                    else if((throw_dir == "front" && spr_dir == -1) ||(throw_dir == "back" && spr_dir == 1))
                    {
                        portal_1.image_angle -= 90;
                        portal_1.isWall = true;
                        portal_1.leftWall = true;
                        portal_1.x-=13;
                        portal_1.y-=15;
                        
                    	while( !place_meeting(portal_1.x-10,portal_1.y-34,asset_get("par_block"))) portal_1.y++;
                    	while( place_meeting(portal_1.x,portal_1.y,asset_get("par_block"))) portal_1.x++;
                    	while(portal_1.y > room_height-100) portal_1.y--;

                    }
                    // Ceiling specific stuff
                    else if(throw_dir == "up")
                    {
                        portal_1.image_angle += 180;
                        portal_1.isCeil = true;
                    } else{
                    	portal_1.isFloor = true;
                    }
                }
                else
                {
                	//Fx
            		butterflyFXr(60,60,15,other.x - x, other.y - y - 10);
                	
                    // Delete old portal
                    instance_destroy(portal_2);
                    portal_2 = noone;
                    
                    // Spawn new portal
                    portal_2 = instance_create(other.x, other.y+(ceilFloor == 1 ? -10 : 10), "obj_article1")
                    portal_2.portal_id = 2;
                    
                    // Save platform
                    if(collision_circle(other.x,other.y, 5, asset_get("par_jumpthrough"), true,true) != noone)
                    {
                        portal_2.platform = collision_circle(other.x,other.y, 5, asset_get("par_jumpthrough"), true,true);
                    }
                    
                    // Wall specific stuff
                    if((throw_dir == "front" && spr_dir == 1) ||(throw_dir == "back" && spr_dir == -1))
                    {
                        portal_2.image_angle += 90;
                        portal_2.isWall = true;
                        portal_2.rightWall = true;
                        //portal_2.x+=33;
                        portal_2.y-=15;
                        while( !place_meeting(portal_2.x+10,portal_2.y-34,asset_get("par_block"))) portal_2.y++;
                        while( place_meeting(portal_2.x,portal_2.y,asset_get("par_block"))) portal_2.x--;
                        while(portal_2.y > room_height-100) portal_2.y--;
                    }
                    else if((throw_dir == "front" && spr_dir == -1) ||(throw_dir == "back" && spr_dir == 1))
                    {
                        portal_2.image_angle -= 90;
                        portal_2.isWall = true;
                        portal_2.leftWall = true;
                        portal_2.x-=13;
                        portal_2.y-=15;
                        
                        while( !place_meeting(portal_2.x-10,portal_2.y-34,asset_get("par_block"))) portal_2.y++;
                        while( place_meeting(portal_2.x,portal_2.y,asset_get("par_block"))) portal_2.x++;
                        while(portal_2.y > room_height-100) portal_2.y--;
                    }
                    // Ceiling specific stuff
                    else if(throw_dir == "up")
                    {
                        portal_2.image_angle += 180;
                        portal_2.isCeil = true;
                    }
                    else portal_2.isFloor = true;
                    
                }
            }

            
            
        }
    }
    
}

// gravity reset
if(gravity_speed_init > gravity_speed) gravity_speed+=0.8;
if(gravity_speed > gravity_speed_init) gravity_speed = gravity_speed_init;

// Visible failsafe
//if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && state != PS_AIR_DODGE && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD) visible = true;

hsp_prev = hsp;

// if((joy_dir > 80 && spr_dir == 1) || (joy_dir < 100 && spr_dir == -1))
// {
//     set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
//     set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED, -15);
// }
// else
// {
//      set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED, 10);
//      set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED, -10);
// }

//Portal cooldown
if(global_portal_cooldown > 0) global_portal_cooldown--;



// Delete portals
if(charges == 0)
{
	
	// Delete portals
	if(portal_1 != noone)
	{
		butterflyFX(80,80,20,portal_1.x-x,portal_1.y-y-20);
	    instance_destroy(portal_1);
	    portal_1 = noone;
	}
    
    if(portal_2 != noone)
    {
    	butterflyFXr(80,80,20,portal_2.x-x,portal_2.y-y-20);
	    instance_destroy(portal_2);
	    portal_2 = noone;
    }
    
    charges = max_charges;
}

// Handle portal timers
with(oPlayer)
{

	// Tick down afterimage and white
	if(portal_afterimage.timer > 0) portal_afterimage.timer--;
	if(portal_white > 0) portal_white--;
	
    if(in_portal == true)
    {
    	// Draw afterimage
    	if(portal_afterimage.timer == 0 && teleported)
    	{
    		teleported = false;
    		// Clear pratfall
    		if(state == PS_PRATFALL) set_state(PS_IDLE_AIR);
    		if("uspecial_buffer" in self) uspecial_buffer = false;
    		
    		
    		// Flash fx
            with(monarch) { var s= spawn_hit_fx(other.x,other.y+vsp,teleport_lite_start); s.depth = depth-1; 
            }
    		
	    	portal_afterimage.timer = 10;
	    	portal_afterimage.sprite_index = sprite_index;
	    	portal_afterimage.image_index = image_index;
	    	portal_afterimage.x = xprevious;
	    	portal_afterimage.y = yprevious;
	    	portal_afterimage.spr_dir = last_spr_dir;
    	}
    	
        if(portal_timer == 0 )
        {
        	if(portal_cooldown == 0)
        	{
	            in_portal = false;
	            portal_timer = 2;
        	}
        }
        else
        {
            portal_timer--;
        }
    }
    
    // Portal cooldown
    if(portal_cooldown > 0) portal_cooldown--;
    
    if(state == PS_JUMPSQUAT) portal_cooldown = 0;
    
    // Misc
	last_spr_dir = spr_dir;
}

// Blink reset
if(!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN)
{
	can_blink = true;
}

#define butterflyFX(_xrange,_yrange,_density,_xoff,_yoff)
{
	if(lite) return;
	
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

#define butterflyFXr(_xrange,_yrange,_density,_xoff,_yoff)
{
	if(lite) return;
	
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
		spawn_hit_fx( x + _xoff + random_func_2(i,_xrange,true), y + _yoff + random_func_2(i+1,_yrange,true), butterfliesr[random_func_2(i+2,7,true)+1]);
		
		// Increment counter
		i++;
	}
	
	spr_dir = dir_storage;
}


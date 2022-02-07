// Update

var monarch = self;

// Auto enable lite mode
if(!lite){
	if(fps_real < 50 && introTimer > 16) 
	{
		if(frameTimer >= 15)
			lite = true;
		else
			frameTimer++;
	}
	else
	{
		frameTimer = 0;
	}
}
else if(frameTimer < 100)
{
	frameTimer++;
}

// Munophone
if get_training_cpu_action() != CPU_FIGHT || trainingMode == 1 {
    user_event(14);
} else {
    if get_training_cpu_action() == CPU_STAND {
        trainingMode = 1
    }
}

//gatling
if (state != PS_ATTACK_GROUND) and phone_cheats[canGatle] == 1
{
	reset_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION);
	reset_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION);
}


//#region Player trail
if(!lite)
with(oPlayer) if(player != other.player) if(last_monarch == monarch)
{
	if(!(state == 12 || state == 7 || state == 0 || state == SC_HITSTUN || state == PS_RESPAWN) && other_arrayindex > 0) other_array_cleared = false;
	
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
			if(i != 0) other_afterimage_array[i] = -1;
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
(hbAttack == AT_UTILT) ||
(hbAttack == AT_USPECIAL)
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


//#region Portal trail
if(portal_1 != noone && portal_2 != noone || portal_delay > 0)
{
	with(oPlayer) portalTrails(monarch,false);
	with(obj_article2) if("is_monarch" in player_id) portalTrails(monarch,true);
	with(obj_article3) if("is_monarch" in player_id) portalTrails(monarch,true);
}
else
{
	portallineindex = 0;
}
//#endregion


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


// Fspecial funcitonality after delay
if(fspec_delay_timer == 1)
{

    portal_afterimage.timer = 10;
    portal_afterimage.sprite_index = sprite_index;
    portal_afterimage.image_index = image_index;
    portal_afterimage.x = x;
    portal_afterimage.y = y;
    portal_afterimage.spr_dir = spr_dir;
    last_pcolor = 1;
    portal_white = 15;
    old_hsp = -hsp/2;
    old_vsp = free ? -4.5 : vsp;
    vsp_prev = old_vsp;
    hsp_prev = -hsp/2;
    
    spawn_hit_fx(fspec_hit_player.x,fspec_hit_player.y-(char_height/1.5),newtprings);
    
    //hitpause = true;
    //hitstop = hpTime;
    //hitstop_full = hpTime;
    

    
	
    sound_play(sound_get("monarch_fspecialhit"))
    
    var isRight = -spr_dir;
    
    var xtemp = x;
    var ytemp = y;
    
    
    //other.x = xtemp;
    //other.y = ytemp;
    
    x = fspec_hit_player.x - (50*isRight);
    y = fspec_hit_player.y;
    
    set_state(PS_LAND);


	
    
    spr_dir *=-1;
    hit_fspec = true;
    fspec_line_timer = 15;
    
    // Knife special interaction
    if(time_knife != noone){
    	if(time_knife.stuck_player == fspec_hit_player){
    		time_knife.early_trigger = true;
    		time_knife.did_hitbox = true;
    	}
    	else
    	{
    		visible = true;
			invincible = false;
    	}
    }
    else
    {
    	visible = true;
		invincible = false;
    }
    
    //fx
    // spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-hit_player_obj.char_height/2,star_faster);
    // butterflyFX(100,100,10,hit_player_obj.x-x,hit_player_obj.y-y-hit_player_obj.char_height/2);
}
if(fspec_delay_timer > 0) fspec_delay_timer--;


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

// Leaving this here in case I need it - get var names
// with(pHitBox){
// 	var p = variable_instance_get_names(self)
// 	var i = 0;
	
// 	if(hitbox_timer==1) other.test_index+=16;
// 	repeat(16){
// 		print_debug(p[i+other.test_index])
// 		i++;
// 	}
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
		}
		
		hit_player_obj.hitstop +=8;
		hitstop+=8;
		
		if(attack != AT_USTRONG)sound_play(sound_get("monarch_fstronghit"))
    } else sound_play(sound_get("monarch_knifehit3"))
}

if(hitpause == false) black_screen = false;

// Fspecial timer
if(fspec_line_timer > 0) fspec_line_timer--;
if(knife_line_timer > 0) knife_line_timer--;
if(portal_line_timer > 0) portal_line_timer--;

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
        
		if(ceilPlat)
		{
			destroyed = true;
		}
        
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
        if(!destroyed)
        if(y < other.phone_blastzone_b && canPlacePortal && (ceilPlat || (ceilFloor && (other.throw_dir == "up" || other.throw_dir == "down")) || rightWall || leftWall || !destroyed && (collision_circle(x,y, other.throw_dir == "down" ? 38 : 5, asset_get("par_block"), true,true) != noone || 
        
        (  (collision_circle(x,y,other.throw_dir == "down" ? 38 : 15, asset_get("par_jumpthrough"), true,true) != noone) && (other.throw_dir == "up" || other.throw_dir == "down")  )
        
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
                    
                    	while( !place_meeting(portal_1.x,portal_1.y,asset_get("par_block")) && !place_meeting(portal_1.x,portal_1.y,asset_get("par_jumpthrough"))) portal_1.x++;
                    	while( !place_meeting(portal_1.x,portal_1.y,asset_get("par_block")) && !place_meeting(portal_1.x,portal_1.y,asset_get("par_jumpthrough"))) portal_1.x--;
                    	while( place_meeting(portal_1.x,portal_1.y,asset_get("par_block")) || place_meeting(portal_1.x,portal_1.y,asset_get("par_jumpthrough"))) {
                    		
                    		// Stop moving up if already in place
                    		if(place_meeting(portal_1.x,portal_1.y+34,asset_get("par_block")) || place_meeting(portal_1.x,portal_1.y+34,asset_get("par_jumpthrough"))) break;
                    		
                    		portal_1.y--;
                    	}
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
                        //portal_1.x+=33;
                        portal_2.y-=15;
                        
                        var limit = 100;
                        exit;
						while( !place_meeting(portal_2.x+20,portal_2.y-34,asset_get("par_block"))){
							portal_2.y++;
							
							limit--;
							if(limit == 0){
								limit = 100;
								break;
							}
						}
                    	
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
                    else {
                    	portal_2.isFloor = true;
                    	
                		while( !place_meeting(portal_2.x,portal_2.y,asset_get("par_block")) && !place_meeting(portal_2.x,portal_2.y,asset_get("par_jumpthrough"))) portal_2.x++;
                    	while( !place_meeting(portal_2.x,portal_2.y,asset_get("par_block")) && !place_meeting(portal_2.x,portal_2.y,asset_get("par_jumpthrough"))) portal_2.x--;
                    	while( place_meeting(portal_2.x,portal_2.y,asset_get("par_block")) || place_meeting(portal_2.x,portal_2.y,asset_get("par_jumpthrough"))) {
                    		
                    		// Stop moving up if already in place
                    		if(place_meeting(portal_2.x,portal_2.y+34,asset_get("par_block")) || place_meeting(portal_2.x,portal_2.y+34,asset_get("par_jumpthrough"))) break;
                    		
                    		portal_2.y--;
                    	}
                    }
                    
                }
            }

            
            
        }
    }
    
}

// Command grab stuff
if (state_cat == SC_HITSTUN) {
    // Remove Grab ID when in hitstun
    GrabbedId = 0;
}
if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && GrabbedId != 0) {
    // Set player's launch for if the move is somehow canceled early it uses the launch of the last hit (this is mainly for aerial multihits, you can change the part in the 1st parentheses to something else, but the dsin and dcos are for the angles so they are needed).
    GrabbedId.vsp = ( GrabKB + (GrabScaling * GrabKB / 2) ) * dsin(GrabAngle) * -1;
    GrabbedId.hsp = ( GrabKB + (GrabScaling * GrabKB / 2) ) * dcos(GrabAngle) * spr_dir;
    // Other variable reseting related to the above stuff
    GrabAngle = 0;
    GrabKB = 0;
    GrabScaling = 0;
    // Remove Grab ID when in hitstun
    GrabbedId = 0;
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
if(!("is_monarch" in self) || player == other.player)
{
	// Delay end
	if(portal_delay > 0 && portal_delay <= 1)
	{
		hitstop = 0;
		hitpause = false;
		
		hsp = old_hsp;
		vsp = old_vsp;
		
		// Portal white fx
		if(instance_exists(monarch.portal_1) && instance_exists(monarch.portal_2))
		{
			if(last_pcolor == 2)
			{	monarch.portal_1.portal_white = 30;	}
			else 
			{	monarch.portal_2.portal_white = 30;	}
		}
		
		visible = true;
		
	    // Flash fx
        with(monarch) { var s= spawn_hit_fx(other.x,other.y+vsp,teleport_lite_return); s.depth = depth-1; }
        
        // Enable hitboxes
        with(pHitBox)
        {
        	if(player_id == other && type == 1)
        	{
        		with(player_id)
        		{
	        		other.image_xscale = get_hitbox_value(other.attack,other.hbox_num,HG_WIDTH)/200;
	        		other.image_yscale = get_hitbox_value(other.attack,other.hbox_num,HG_HEIGHT)/200;
        		}
        	}
        }
	}
	
	// Delay subtract
	if(portal_delay > 0)
	{
		portal_delay--;
	}
	


	// Portal delay
	if(portal_delay > 1)
	{
		if(portal_delay == max_portal_delay)
		{
			// Flash fx
    		with(monarch) { var s= spawn_hit_fx(other.last_teleport_x,other.last_teleport_y+vsp,teleport_lite_start); s.depth = depth-1; }
		}
		
		// Afterimage and hitpause
		hitpause = true;
		hitstop = portal_delay;
		
		visible = false;
		
    	portal_afterimage.timer = 10;
    	portal_afterimage.sprite_index = sprite_index;
    	portal_afterimage.image_index = image_index;
    	portal_afterimage.x = xprevious;
    	portal_afterimage.y = yprevious;
    	portal_afterimage.spr_dir = last_spr_dir;
    	
	}
	else
	{
		// Failsafe teleported reset
		if(portal_afterimage.timer == 0 && teleported) teleported = false;
		
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
	    		
	    		if("uspecial_buffer" in self) 
	    		{
	    			uspecial_buffer = false;
	    			print_debug("here3");
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
	            in_portal = false;
	            portal_timer = 2;
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
#define portalTrails(monarch, _projectile)
{
	//if(portal_delay > 0)
	{
		if(portal_delay == max_portal_delay && instance_exists(monarch.portal_1) && instance_exists(monarch.portal_2))
		{
			var monportal1 = monarch.portal_1;
			var monportal2 = monarch.portal_2;
			
			var trailid = _projectile ? article_trailid : player;
			
			portal_speed = point_distance(monportal1.x,monportal1.y,monportal2.x,monportal2.y)/ (_projectile ? 10 : 15);
		
	
			// 3 Points
			
			// Find get coords of portals consistent
			port1x = monportal1.centerx > monportal2.centerx ? monportal2.centerx : monportal1.centerx;
			port1y = monportal1.centerx > monportal2.centerx ? monportal2.centery : monportal1.centery;
			
			port2x = monportal1.centerx > monportal2.centerx ? monportal1.centerx : monportal2.centerx;
			port2y = monportal1.centerx > monportal2.centerx ? monportal1.centery : monportal2.centery;
			
			port1 = monportal1.centerx > monportal2.centerx ? monportal2 : monportal1;
			port2 = monportal1.centerx > monportal2.centerx ? monportal1 : monportal2;
			
			// Left or right?
			monarch.portaltrails[trailid].right = last_pcolor == 1 ? monportal1.centerx < monportal2.centerx : monportal1.centerx > monportal2.centerx;
			monarch.portaltrails[trailid].up = last_pcolor == 1 ? monportal1.centery < monportal2.centery : monportal1.centery > monportal2.centery;
			
			var upangle = true;
			
			// x1,y1
			var x1 = port1x;
			var y1 = port1y;
			
			// x3,y3
			var x3 = port2x;
			var y3 = port2y;
			
			var x2 = 0;
			var y2 = 0;
			
			// Select high or low angle
			if(last_pcolor == port1.portal_id ? port2.isCeil : port1.isCeil)
			{
				// High angle
				upangle = true;
				x2 = dcos(60) * (x1 - x3) - dsin(60) * (y1 - y3) + x3;
				y2 = dsin(60) * (x1 - x3) + dcos(60) * (y1 - y3) + y3;
			}
			else
			{
				// Low angle
				upangle = false;
				x2 = (x1 + x3 + sqrt(3) * (y1 - y3) )/2
				y2 = (y1 + y3 + sqrt(3) * (x3 - x1) )/2
			}


			// Curve calcs
			var xtemp = x2;
			var ytemp = y2;
			
			y2 = (y1+y3)/2;
			x2 = (x1+x3)/2;
			
			x2-=abs(xtemp - (x1+x3)/2)/10 * ((abs(old_hsp))/2) * ((x2 < ((x1+x3)/2)) ? 1 : -1);
			y2+=(abs(ytemp - (y1+y3)/2)/10) * (upangle ? -1 : 1) * ((abs(old_vsp))/2);


		
			// Debug values
			t1 = x2;
			t2 = y2;
			
			b1 = x1;
			b2 = y1;
			
			c1 = x3;
			c2 = y3;

			// Calulating middle point of line
			denom = (x1-x2) * (x1-x3) * (x2-x3);
			line_A = (x3 * (y2-y1) + x2 * (y1-y3) + x1 * (y3-y2)) / denom;
			line_B = (x3*x3 * (y1-y2) + x2*x2 * (y3-y1) + x1*x1 * (y2-y3)) / denom;
			line_C = (x2 * x3 * (x2-x3) * y1+x3 * x1 * (x3-x1) * y2+x1 * x2 * (x1-x2) * y3) / denom;
				
			monarch.portaltrails[trailid].x = last_pcolor == 1 ? monportal1.centerx : monportal2.centerx;
			monarch.portaltrails[trailid].y = last_pcolor == 1 ? monportal1.centery: monportal2.centery;

		}

	
		var num = monarch.lite ? 1 : 5;
		repeat(num)
			{
			
			// Weird above/below check
			var nanthreshhold = 30;
			
			// Why do I have to set this again? Perhaps we'll never know.
			trailid = _projectile ? article_trailid : player;
			
			// Wall line code
			if(abs(port1x-port2x)<nanthreshhold)
			{
				if(portal_delay == max_portal_delay) portal_delay -= 7;
				
				monarch.portaltrails[trailid].y -= ((portal_speed * (_projectile ? 1.2 : 2) )/num) * (monarch.portaltrails[trailid].up ? -1 : 1);
				monarch.portaltrails[trailid].x -= (((port1y + port2y)/2 - monarch.portaltrails[trailid].y)/60) * (monarch.portaltrails[trailid].up ? -1 : 1);
				
			}
			else
			{
				// Update pos
				monarch.portaltrails[trailid].x+= (portal_speed * (monarch.portaltrails[trailid].right ? 1 : -1))/num;
				
				var tx = monarch.portaltrails[trailid].x;
				
				monarch.portaltrails[trailid].y = ceil(line_A*tx*tx + line_B*tx + line_C);
			}
	
			// Spawn fx
			if(portal_delay > 0 && 
			((monarch.portaltrails[trailid].x > port1x && monarch.portaltrails[trailid].x < port2x) || port1x==port2x) )
			{
				with(monarch)
				{
					var tfx = noone;
					
					tfx = spawn_hit_fx(ceil(portaltrails[trailid].x),portaltrails[trailid].y, (other.last_pcolor == 1 ? (_projectile ? portaltrail_proj_blue : portaltrail_blue) : (_projectile ? portaltrail_proj_red : portaltrail_red)));
					tfx.depth = depth - 1;
					
					
					//Align to grid
					if(tfx.x%2 != x%2) tfx.x+=sign(portaltrails[trailid].hsp);
					if(tfx.y%2 != y%2) tfx.y+=sign(portaltrails[trailid].vsp);
				}
			}
			else if(portal_delay > 1)
			{
				portal_delay = 1
			}
			
		}
	}
}

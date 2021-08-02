// User event 0

//article1_update
if(destroyed) exit;

var monarch = player_id;
if(portal_white > 0) portal_white--;


//puddle

if(sprite_index == asset_get("empty_sprite") && inPosition) sprite_index = portal_id == 1 ? sprite_get("puddle_start") : sprite_get("puddler_start");

//#region Sprite and mask
image_index += (sprite_index == sprite_get("puddle") || sprite_index == sprite_get("puddler")) ? 0.14 : 0.28;
ignores_walls = true;
if(image_index >= 5) sprite_index = portal_id == 1 ? sprite_get("puddle") : sprite_get("puddler");
if(!isCeil)
    mask_index = sprite_get("puddle_offset_up")
else
    mask_index = sprite_get("puddle_offset_down")
//#endregion



//Fall down to stage
if(!inPosition)
{
    //#region snap to stage vertically
    
    var limit = 1000;
    if(!isWall && !isCeil)
    {
        while(limit > 0 && !place_meeting(x, y-2, asset_get("par_block")) && !place_meeting(x, y-2, asset_get("par_jumpthrough"))){y++; limit--;}
        while(limit > 0 && !place_meeting(x, y-2, asset_get("par_block")) && !place_meeting(x, y-2, asset_get("par_jumpthrough"))){y--; limit--;}
    }
    if(rightWall)
    {
    	// Right snap
        while(limit > 0 && !place_meeting(x-1, y-17, asset_get("par_block"))){x++;limit--;}
        
        // Left snap
        while(limit > 0 && place_meeting(x-1, y-17, asset_get("par_block"))){x--;limit--;}
    }
    if(leftWall)
    {
    	// Left Snap
        while(limit > 0 && !place_meeting(x+1, y-17, asset_get("par_block"))){x--;limit--;}
        
        // Right Snap
        while(limit > 0 && place_meeting(x+1, y-17, asset_get("par_block"))){x++;limit--;}
    }
    if(isCeil)
    {
        while(limit > 0 && !place_meeting(x, y+48, asset_get("par_block")) && !place_meeting(x, y+48, asset_get("par_jumpthrough"))){y--;limit--;}
    }
    while(limit > 0 && !isCeil &&!isWall && place_meeting(x, y-10, asset_get("par_jumpthrough"))){y-=1;limit--;}
    
    // Floor failsafe
    if(isFloor) while(limit > 0 && place_meeting(x, y-2, asset_get("par_block")) || place_meeting(x, y-2, asset_get("par_jumpthrough"))) {y-=1;limit--;}
    //#endregion
	

    //#region platform/stage edge corrections

    // Different floor/ceiling snap values
    var ceilFloorSwitch = 0;
    if(!isCeil)
        ceilFloorSwitch = 2;
    else
        ceilFloorSwitch = -2;
        
        
    // Set aligned var
    var aligned = false;
    
    // Loop until aligned
    if(!isWall)
    while(limit > 0 && !aligned)
        {
            
        puddleLeft = x - 33;
        puddleRight = x + 33;
        limit--;
        
        if place_meeting(x, y, asset_get("par_jumpthrough")) 
        { //on platform
            var leftPos = position_meeting(puddleLeft, y + ceilFloorSwitch, asset_get("par_jumpthrough"));
            var rightPos = position_meeting(puddleRight, y + ceilFloorSwitch, asset_get("par_jumpthrough"));
            
                
            if !leftPos {
                x += 1;
            } else if !rightPos {
                x -= 1;
            }
            else{
                aligned = true;
            }
    
            
        } 
        else if place_meeting(x, y, asset_get("par_block"))
        { //on ground
            var leftPos = position_meeting(puddleLeft, y + ceilFloorSwitch, asset_get("par_block"));
            var rightPos = position_meeting(puddleRight, y + ceilFloorSwitch, asset_get("par_block"));
            
            if !leftPos {
                x += 1;
            } else if !rightPos {
                x -= 1;
            }
            else{
                aligned = true;
            }
        }
        
        var leftPos = position_meeting(puddleLeft, y + ceilFloorSwitch, asset_get("par_jumpthrough"));
        var rightPos = position_meeting(puddleRight, y + ceilFloorSwitch, asset_get("par_jumpthrough"));
        
    //#endregion
    }
    
   // If limit, destroy
	if(limit == 0){ 
		if(portal_id == 1) player_id.portal_1 = noone 
		else player_id.portal_2 = noone;
		
		
		instance_destroy();
		exit;
	}

    
    // Getting platform if on one
    if(distance_to_object(instance_nearest(x,y,asset_get("par_jumpthrough"))) < 1)
    {
        platform = instance_nearest(x,y,asset_get("par_jumpthrough"));
    }
    

}

// Set center coords and face dir
if(!inPosition)
{
	centerx = x;
	centery = y;
	
	if(!isWall && !isCeil)
	{
		facedir = "up";
	}
	else if(isCeil)
	{
		facedir = "down";
	}
	else if(leftWall)
	{
		facedir = "right";
	}
	else
	{
		facedir = "left";
	}
}
inPosition = true;


//#region Ceiling corrections
if(isCeil && platform != noone)
{
    
    if(distance_to_object(platform) > 0)
    {
        instance_destroy();
    }
    
}
//#endregion


//#region Teleporting

var stuff_to_teleport;
var i = 0;
stuff_to_teleport[0] = pHitBox; //pHitBox
stuff_to_teleport[1] = oPlayer;
stuff_to_teleport[2] = player_id.fspecial_obj;

var checks = 0;

// Teleport to other portal
if(monarch.portal_1 != noone && monarch.portal_2 != noone && monarch.global_portal_cooldown == 0)
repeat(3)
{
with(stuff_to_teleport[i])
{
	// Skip if not in range
    if(point_distance(x,y,other.x,other.y) > 100) continue;
	
	var projCheck = true;
	
	if(i == 0) if!(type == 2 && player_id == other.player_id && attack == AT_UAIR) projCheck = false;
	
    if(instance_exists(other) && projCheck)
    {
    var collidedPlayer = collision_rectangle(x-10 + (hsp/2), y- (i == 2 ? 35 : monarch.original_char_height*1.5), x+10 + (hsp/2), y- (i == 2 ? -35 : 5) +(vsp/2), other, false, true);
    

   
    var correctPos = false;
    
    // If on floor, must be above
    if(!other.rightWall && !other.leftWall && !other.isCeil && y <= other.y && vsp >= 0)
    {
        correctPos = true;
    }
    
    // If on ceiling, must be below
    if(other.isCeil && y >= other.y && vsp <= 0)
    {
        correctPos = true;
    }
        
    // If on right wall, must be to the left
    if(other.rightWall && x <= other.x && hsp > 0)
    {
        correctPos = true;
    }
        
    // If on left wall, must be to the right
    if(other.leftWall && x >= other.x && hsp < 0)
    {
        correctPos = true;
    }

	

	// Make some checks to see if you should be able to teleport
	if("state" in self)
	{
		if(state == PS_TECH_GROUND || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD || state == PS_RESPAWN || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_AIR_DODGE || state == PS_JUMPSQUAT || (state == PS_FIRST_JUMP && state_timer < 2))
		{
			correctPos = false;
		}
		if(was_parried)
		{
			correctPos = false;
			in_portal = true;
		}
	
		// On floor check for players
		if(!other.rightWall && !other.leftWall && !other.isCeil)
		{
			if( !(abs(x-other.x)<23)) correctPos = false;
		}
	}
	
	// Start portal logic
    if(collidedPlayer != noone && correctPos)
    {
        if(in_portal == false && portal_cooldown == 0)
        {
            // Set wall bools
            var otherWall = false;
            var otherCeil = false;
            var onRight = false;
            var onLeft = false;
            var thisWall = other.isWall;
            var thisCeil = other.isCeil;
            
            
            // Check what portal this is and teleport 
            if(other.portal_id == 1)
            {
                var firstPortal = other.player_id.portal_1;
                var secondPortal = other.player_id.portal_2;
            }
            else
            {
                var firstPortal = other.player_id.portal_2;
                var secondPortal = other.player_id.portal_1;
            }
            
                                
            var lastX = x;
            var lastY = y;
            
            if("last_teleport_x" in self) last_teleport_x = x;
            if("last_teleport_y" in self) last_teleport_y = y;
            
            x += secondPortal.x - firstPortal.x;
            y += secondPortal.y - firstPortal.y;
            
            // charges
            with(monarch){
            	sound_play(sound_get("monarch_enterportal"),false,false,1,1+((max_charges-charges)/100));
            	if(i == 1 && phone_cheats[infiniteCharges] == 0) charges--;
            	if(charges == 0) sound_play(sound_get("monarch_fspecialmiss"));
            }
            
            teleported = true;
            

            // Set other wall bool
            otherWall = secondPortal.isWall;
            otherCeil = secondPortal.isCeil;
            onRight = secondPortal.rightWall;
            onLeft = secondPortal.leftWall;
            
			var height = 100;
			if(i == 1) height = char_height;
            
            // Floor
            if(!((otherWall && thisWall) || (otherCeil && thisCeil)) && !(!thisWall && !otherWall))
            {
                //y += (lastX - firstPortal.x)/2 + (height) * (thisCeil ? -1 : 1);
                x += height * 0.5 * (other.rightWall ? 1 : -1);
                
                // On floor from wall
                if(thisWall && !otherCeil) {
                    y = secondPortal.y;
                }

                var shift = lastY - firstPortal.y;
                shift/=2;
                shift = clamp(shift,-33,33);
                x+= shift;
                
                if(otherWall)
                    x = secondPortal.x;
                    
                if(otherCeil)
                    y = secondPortal.y
            }
            
            

            
            // Ceiling position correction
            if(otherCeil && thisCeil)  y -= 20;
            if(otherCeil && !thisCeil) y += 80;
     
            
            // Speed flips
            
            // Both grounded
            if(!thisWall && !otherWall)
                vsp = -vsp;
            

            // This grounded and other wall
            if(!thisWall && otherWall)
            {
            	
    //             var vspTemp = vsp;
    //             vsp = 0;
				// hsp = abs(hsp) * (onRight ? -1 : 1);
				
				var vspTemp = vsp;
                vsp = hsp;
				hsp = abs(vspTemp) * (onRight ? -1 : 1);
                
                //Article boost
                //if(i == 2) y -= 50;
                
                // Walk ground thing
                if(i==1)
                if(free) hsp = vspTemp * -1;
                else {
                    if(!place_meeting(secondPortal.x - 40 * (onRight ? 1 : -1), secondPortal.y+40, asset_get("par_block"))){
                        set_state(PS_IDLE_AIR);
                        hsp *= -1;
                        vsp = 0;
                    }
                    else y = lastY;
                }
            }

            
            // This wall and other grounded
            if(thisWall && !otherWall && !otherCeil)
            {
                var hspTemp = hsp;
                vsp = -abs(hspTemp);
                hsp = 0;
                
                // Article boost
            	if(i == 2) y-=30;
            }
            
            // Both wall
            if(thisWall && otherWall){
                hsp = -hsp;
            }
            
            // This ceil and other floor
            if(thisCeil && !otherCeil)
            {
                vsp = -vsp;
                y -= 60;
            }
    
            // This floor and other ceil
            if(!thisCeil && otherCeil)
            {
                vsp = -vsp;
            }
            

            
            // This wall and other ceil
            if(thisWall && otherCeil)
            {
                var hspTemp = hsp;
                vsp = hspTemp;
                hsp = 0;
                
                if(i==2) y-=50;
            }

            // Flip
            if(otherWall){
            	spr_dir = onRight ? -1 : 1;
            	if(i == 2) x += 40*spr_dir;
            }
            
            
            // hsp vals
            if(onLeft && i==1)
            {
                hsp = abs(hsp);
                //hsp = max(hsp,2);
            }
            
            if(onRight && i == 1)
            {
                hsp = abs(hsp) * -1;
                hsp = min(hsp,-3);
            }
            
            // If other is floor
            if(!otherWall && !otherCeil)
            {
            	var limit = 100;
            	while(       place_meeting(x,y+1,asset_get("par_jumpthrough")) == false && (place_meeting(x,y+1,asset_get("par_block")) == false    ) && limit > 0){
            		y++;
            		limit--;
            	}
  
            } 
            else
            {
            	            
	            // Dashing momentum handling
	            if("state" in self)
	            if(state == PS_DASH || state == PS_DASH_START)
	            {
	            	if(place_meeting(x-20,y+10,asset_get("par_block")) == false && place_meeting(x-20,y+10,asset_get("par_jumpthrough")) == false){
	            		set_state(PS_IDLE_AIR);
	            	}
	            }
            
            }

			// Prevent wall clipping
            if(onRight) x-=20;
            if(onLeft) x+=20;
                    
            // If projectile, flip
            if(i == 0)
            {
                image_xscale *= -1;
            }
            
            // hsp cap
            if("state" in self){
            	if(state != SC_HITSTUN) hsp = sign(hsp)*min(air_max_speed*2,abs(hsp));
            }


            // Teleport FX
        	if(other.portal_id == 1) with(monarch) butterflyFXr(80,(secondPortal.isWall == true ? 105 : 80), 15 ,secondPortal.x - x - (secondPortal.isWall == true ? 40 : 0),secondPortal.y - y - (secondPortal.isWall == true ? 0 : secondPortal.isCeil == true ? -50 : 50),true);
        	else with(monarch) butterflyFX(80,(secondPortal.isWall == true ? 105 : 80), 15 ,secondPortal.x - x - (secondPortal.isWall == true ? 40 : 0),secondPortal.y - y - (secondPortal.isWall == true ? 0 : secondPortal.isCeil == true ? -50 : 50),true);
            

        }
        
        // Set portal timer variables
        // This prevents infinate portal loop jank
        if(portal_cooldown == 0)
        {
	        in_portal = true;
	        portal_timer = 2;
	        portal_cooldown = 30;
	       
	        last_pcolor = other.portal_id;
	        monarch.global_portal_cooldown = 10;
	        
	        if(teleported)
	        {
	        	other.portal_white = 15;
		        portal_delay = max_portal_delay;
		        old_hsp = hsp;
		        old_vsp = vsp;
		        
		        // Disable hitboxes
		        // SHUT UP IT'S THE ONLY THING THAT WORKS
		        with(pHitBox)
		        {
		        	if(player_id == other && type == 1)
		        	{
		        		image_xscale = 0;
		        		image_yscale = 0;
		        	}
		        }
	        }
        }
    }
    }
}
i += 1;
}
//#endregion

//#region Shake
if(monarch.charges == 1)
if(shake_timer == 0){
	if(isWall) y += (get_gameplay_time()%2 == 1 ? 1 : -1);
    else x += (get_gameplay_time()%2 == 1 ? 1 : -1);
    	
    shake_timer = 2;
} else shake_timer--;

//#endregion


//#region particles
if(fxCount > 0) fxCount--;
else
{

    with(oPlayer) if(id == other.player_id)
        if(other.portal_id == 1) butterflyFX(50,(other.isWall == true ? 75 : 50),1,other.x - x - (other.isWall == true ? 40 : 0) + ( other.leftWall == 1 ? 80 : 0),other.y - y - (other.isWall == true ? 0 : other.isCeil == true ? -50 : 50),false);
        else butterflyFXr(50,(other.isWall == true ? 75 : 50),1,other.x - x - (other.isWall == true ? 40 : 0) + ( other.leftWall == 1 ? 80 : 0),other.y - y - (other.isWall == true ? 0 : other.isCeil == true ? -50 : 50),false);
    
    fxCount = 35 - monarch.charges*4;
}


//#endregion

//#region Floating failsafe
var radius = 50;
if(collision_circle(x,y,radius,asset_get("par_block"),false,true) == noone && collision_circle(x,y,radius,asset_get("par_jumpthrough"),false,true) == noone)
{
	with(monarch)butterflyFX(80,80,20,portal_1.x-x,portal_1.y-y-20,false);
	if(portal_id == 1) monarch.portal_1 = noone;
	if(portal_id == 2) monarch.portal_2 = noone;
	
	destroyed = true;
	instance_destroy();
}

//#endregion

#define butterflyFX(_xrange,_yrange,_density,_xoff,_yoff,_infront)
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
		var part = spawn_hit_fx( x + _xoff + random_func_2(i,_xrange,true), y + _yoff + random_func_2(i+1,_yrange,true), butterflies[random_func_2(i+2,7,true)+1]);
		if(_infront) part.depth = -100;
		
		// Increment counter
		i++;
	}
	
	spr_dir = dir_storage;
}

#define butterflyFXr(_xrange,_yrange,_density,_xoff,_yoff, _infront)
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
		var part = spawn_hit_fx( x + _xoff + random_func_2(i+2,_xrange,true), y + _yoff + random_func_2(i+3,_yrange,true), butterfliesr[random_func_2(i+2,7,true)+1]);
		if(_infront) part.depth = -100;
		// Increment counter
		i++;
	}
	
	spr_dir = dir_storage;
}

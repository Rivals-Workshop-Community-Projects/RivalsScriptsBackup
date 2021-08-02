// Swap projectile

//#region Sprite and mask
image_index += 1;
ignores_walls = false;
sprite_index = sprite_get("fspecial_proj");
despawn_timer--;

afterimage_array[0] = {x:x,y:y,sprite_index:sprite_index,image_index:image_index,spr_dir:spr_dir};
//#endregion


//#region controlling
// Convert joy dir to radians
var rad_joy_dir = degtorad(player_id.joy_dir);
var turning_speed = .3;

if(!player_id.joy_pad_idle)
{
	// Teleport in direction of stick
	var targethsp = cos(rad_joy_dir) * move_speed;
	var targetvsp = sin(rad_joy_dir) * -move_speed;


	if(hsp > targethsp) hsp -= turning_speed else hsp += turning_speed;
	if(vsp > targetvsp) vsp -= turning_speed else vsp += turning_speed;
}

//#endregion

//#region afterimages
if(release_box == noone)
{
	arrayindex++;
	afterimage_array[arrayindex] = {x:x,y:y,sprite_index:sprite_index,image_index:image_index,spr_dir:spr_dir};
	
	array_cleared = false;
	black_screen = player_id.black_screen;
}


//#endregion


//#region portals
// Tick down afterimage
if(portal_afterimage.timer > 0) portal_afterimage.timer--;

if(in_portal == true)
{
	// Draw afterimage
	if(portal_afterimage.timer == 0 && teleported)
	{
		
		// Charged
		if(!charged) sound_play(sound_get("monarch_zap"),false,0,0.5);
		charged = true;
		
		teleported = false;
		
		//spr_dir*=-1;
		
		// Flash fx
        with(player_id) spawn_hit_fx(other.x,other.y+vsp+40,teleport_lite_start_smaller);
		
 		portal_afterimage.timer = 10;
 		portal_afterimage.sprite_index = sprite_index;
 		portal_afterimage.image_index = image_index;
 		portal_afterimage.x = xprevious;
 		portal_afterimage.y = yprevious;
	}
	
    if(portal_timer == 0)
    {
        in_portal = false;
        portal_timer = 2;
    }
    else
    {
        portal_timer--;
    }
}

//#endregion

//#region portal delay
if(portal_delay > 1)
{
	portal_delay--;
	despawn_timer++;
	
	hsp = 0;
	vsp = 0;
	
	visible = false;
}
else if(portal_delay == 1)
{
	portal_delay--;
	
	hsp = old_hsp;
	vsp = old_vsp;
	
	visible = true;
}

//#endregion


//#region release
// Player collision
var hitPlayer = collision_point(x,y,asset_get("oPlayer"),false,true) != player_id && collision_point(x,y,asset_get("oPlayer"),false,true) != noone;

if((!player_id.special_down || despawn_timer <= 0 || hitPlayer) && despawn_timer < 34)
{
    if(release_box == noone){
    	
    	// Boom, teleport, do it
    	release_box = create_hitbox(AT_FSPECIAL, 1, floor(x), floor(y));
    	
    	player_id.fspec_charged = charged;
    	
    	with(player_id) {
    		butterflyFX(100,100,10,floor(other.x)-x,floor(other.y)-y,false);
    		sound_play(sound_get("monarch_fspecialmiss"))
    	}
    	spawn_hit_fx(x,y,player_id.star_faster);
    	
    	player_id.fspecial_obj = noone;
    }
    instance_destroy();
}
//#endregion


#define butterflyFX(_xrange,_yrange,_density,_xoff,_yoff,_infront)
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
		var part = spawn_hit_fx( x + _xoff + random_func_2(i,_xrange,true), y + _yoff + random_func_2(i+1,_yrange,true), butterflies[random_func_2(i+2,7,true)+1]);
		if(_infront) part.depth = -100;
		
		// Increment counter
		i++;
	}
	
	spr_dir = dir_storage;
}



//article1_update
exist_timer++;
state_timer++;

vsp += 0.3;
if (sprite_index != sprite[state]){
	sprite_index = sprite[state];
}

if (state == 0 && state_timer < 50)
{
    image_index += 0.122;
}
if (hits > 5 && state != 2)
{
	sound_play( sound_get( "meem_dies" ) );
	setState(2);
}

if (player_id.sticky_count > 4) //disabling this
{
if (obj_article2.hit_wall == true || obj_article3.hit_wall == true)
{
	freeze = 1;
	freeze_timer = 10;
	x = x - 4 * spr_dir;
}
}


if (x < SD_X_POS || x > SD_X_POS + room_width){
setState(2);
}

if (y < SD_Y_POS || y > SD_Y_POS + room_height){
setState(2);
}
var got_hit = 0;

with (asset_get("pHitBox")){
    if (place_meeting(x,y,other)){
		if (player_id == other.player_id){ //Owner hit
			got_hit = 1;
		}
		else{ //Enemy hit
			
        	got_hit = 2;
        		

		}
    }
}

if (got_hit = 2)
{
	hits++;
	if hit_sfx_timer == 0{
		
		if ((random_func (3, 3, true)) == 1)
   		{
   			sound_play( sound_get("mc_shield1"));
   		}
   		else if ((random_func (3, 3, true)) == 2)
  		{
 			sound_play( sound_get("mc_shield2"));
  		}
  		else
   		{
 			sound_play( sound_get("mc_shield3"));
    	}
    hit_sfx_timer = 2
	}
}
if (hit_sfx_timer > 0){
	hit_sfx_timer = hit_sfx_timer - 1;
}


if (state == 0 && state_timer > 50)
{
    setState(1);
}

if (state == 1 && free == false)
{
	hsp = 1 * spr_dir;
}

if (state == 1 && hit_wall = true)
{
	spr_dir = spr_dir * -1;
}

if (state == 2)
{
	image_index += 0.2;
	hsp = 0;
}

if (death_sfx = 0 && state == 2)
{
	death_sfx = 1;
	sound_play( sound_get( "meem_dies" ) );
	
}

if (state = 2 && state_timer > 60)
{
	player_id.meem_num = -1;
	player_id.call_count = 0;
	  instance_destroy();
	  
	exit;
}


if (state == 1)
{
	
	meem_timer += -1;
	if (player_id.attack == AT_DSPECIAL_2 && player_id.window == 2 && player_id.window_timer == 1) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
	
	{
	my_hitbox = create_hitbox(AT_DSPECIAL, 1, x, y);
	meem_timer = 100;
	 	sound_play( sound_get( "meem" ) );

	
	}
	
	if (meem_timer > 0)
	{
		
	my_hitbox.x = x;
	my_hitbox.y = y;
	my_hitbox.spr_dir = spr_dir;
	}
}

if (sprite_index != sprite[state]){
	sprite_index = sprite[state];
}

//TinMines stuff
if y > room_height{
	player_id.call_count = 0;
	player_id.meem_num = -1;
	sound_play( sound_get( "meem_fall" ) );
	instance_destroy();
}

//damaging meem



if (freeze = 1)
{
	hsp = 0;
	freeze_timer += -1;
}

if (freeze_timer < 9)
{
	hsp = 1 * spr_dir;
}


#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;

// vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
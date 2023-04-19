//update

sticky_timer+= -1;
game_time++;
reminder_timer++;


//dialogue buddy compatibility
if(variable_instance_exists(id,"diag"))
{
 diagchoice = [
    "Stout Shako for 2 refined?",
    "LEEEEEEETS DO IT!!"]

if(otherUrl == "2113500915" && diag != "2113500915") //Change the url into a specific character's
    {
        diag = "You come wide at me again, boy, I'll stick that wrench right up yer arse!";
    } //engineer
if(otherUrl == "2817605804" && diag != "2817605804") //Change the url into a specific character's
    {
        diag = "Stout Shako for-... is that scout?";
    } //jerma985
if(otherUrl == "1960200333" && diag != "1960200333") //Change the url into a specific character's
    {
        diag = "Bring it on, pan to pan!";
    } //fry
if(otherUrl == "2192126112" && diag != "2192126112") //Change the url into a specific character's
    {
        diag = "That demo's a bloody spy!";
    } //demopan
    if(otherUrl == "2273636433" && diag != "2273636433") //Change the url into a specific character's
    {
        diag = "MEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDIC";
    } //dr mario
if(otherUrl == "2840091641" && diag != "2840091641")//Change the url into a specific character's
    {
        diag = "Lot o' good that Soldier trainin' did ya! I'm drunk!";
    } //soldier
if(otherUrl == "2855638778" && diag != "2855638778")//Change the url into a specific character's
    {
        diag = "Lot o' good that Soldier trainin' did ya! I'm drunk!";
    } //soldier(the other soldier)
if(otherUrl == "2035357584" && diag != "2035357584")//Change the url into a specific character's
    {
        diag = "Lot o' good that Soldier trainin' did ya! I'm drunk!";
    } //Nade
}


if (game_time = 30)
{
	with (asset_get("oPlayer"))
	{
		if (object != noone)
		{
			other.objectcompat = object;
		}
	}
}




if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered
if (introTimer < 14) {
    draw_indicator = false;
} 
else if (introToggle != 60 && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND)
{
    draw_indicator = true;
    introToggle = 60;
}

if (dtaunt_mode = 1) //codes unaligned, whaddya gonna do? piss your pants? maybe shid and cum?
{
//	move_cooldown[AT_USPECIAL] = 5;
	move_cooldown[AT_DSPECIAL] = 5;
	move_cooldown[AT_FSPECIAL] = 5;
	move_cooldown[AT_FSTRONG] = 5;
	move_cooldown[AT_USTRONG] = 5;
	move_cooldown[AT_DSTRONG] = 5;
	move_cooldown[AT_FTILT] = 5;
	move_cooldown[AT_UTILT] = 5;
	move_cooldown[AT_DTILT] = 5;
	move_cooldown[AT_FAIR] = 5;
//	move_cooldown[AT_BAIR] = 5;
	move_cooldown[AT_UAIR] = 5;
	move_cooldown[AT_DAIR] = 5;
	move_cooldown[AT_NAIR] = 5;
	move_cooldown[AT_JAB] = 5;
	move_cooldown[AT_DATTACK] = 5;
}

if (state != PS_ATTACK_AIR)
{
	if (objectcompat != noone)
	{
		if ((random_func (9, 9, true)) == 1)
    		{
    				set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("default1"));
    		}
    		else if ((random_func (9, 9, true)) == 2)
    		{
    			set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("default2"));
    		}
    		else if ((random_func (9, 9, true)) == 3)
    		{
    			set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("default3"));
    		}
    		else if ((random_func (9, 9, true)) == 4)
    		{
    			set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("default4"));
    		}
    		else if ((random_func (9, 9, true)) == 5)
    		{
    			set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("default5"));
    		}
    		else
    		{
    			set_attack_value(AT_UAIR, AG_SPRITE, objectcompat);
    		}
	}
	else
	{
		if ((random_func (5, 5, true)) == 1)
    	{
    		set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("default1"));
    	}
    	else if ((random_func (5, 5, true)) == 2)
   		{
    		set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("default2"));
    	}
   		else if ((random_func (5, 5, true)) == 3)
    	{
    		set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("default3"));
    	}
    	else if ((random_func (5, 5, true)) == 4)
    	{
    		set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("default4"));
    	}
    	else
    	{
    		set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("default5"));	
    	}
	}
}

if (spr_dir = 1)
{
crit = hit_fx_create( sprite_get( "crit" ), 60 );
donk = hit_fx_create( sprite_get( "donk" ), 60 );
}
if (spr_dir = -1)
{
crit = hit_fx_create( sprite_get( "critreverse" ), 60 );
donk = hit_fx_create( sprite_get( "donkreverse" ), 60 );
}

if (state == PS_WALK)
{
	if (spr_dir = 1)
	{
		if (hsp > 2)
		{
			hsp = 2;
		}
	}
	if (spr_dir = -1)
	{
		if (hsp < -2)
		{
			hsp = -2;
		}
	}
}


if (state == PS_PRATFALL && attack == AT_DATTACK)
{
	if (spr_dir = 1)
	{
		if (right_down)
		{
			prat_fall_accel = 0.5;
		}
		if (left_down)
		{
			prat_fall_accel = 1.5;
		}
	}
	if (spr_dir = -1)
	{
		if (left_down)
		{
			prat_fall_accel = 0.5;
		}
		if (right_down)
		{
			prat_fall_accel = 1.5;
		}
	}
}
else
{
	prat_fall_accel = 1;
}

if (introTimer = 1 && introTimer2 = 1)
{
	    sound_play( sound_get( "demo_charge_windup2" ) );
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.






if (det_timer == 3 && sticky_count > 0 && sticky_timer < 0)
{
    with (obj_article2)
    {
       	if (player_id == other.id && explodestickies = 0)
    	{
    	create_hitbox(AT_FSPECIAL, 1, x, y);
        state = 2;
        state_timer = 0;
    	}
    	else if (player_id == other.id && explodestickies = 1)
    	{
    	create_hitbox(AT_FSPECIAL, 2, x, y);
        state = 2;
        state_timer = 0;
    	}
    }
	sticky_count = 0;
    sticky_timer = 6;
}

if (meem_num > 0)
{
	meem_limit++;
	if (obj_article_solid.meem_timer > 60)
	{
		meemfx.x += 1 * obj_article_solid.spr_dir;
	}
	if (meem_limit == 700)
	{
		with (obj_article_solid)
		{
		  state = 2;
		  state_timer = 0;
		}
	}
}

if (meem_num = -1 || meem_limit > 900)
{
	meem_regen++;
	if (meem_regen > 250)
	{
		meem_num = 0;
		meem_regen = 0;
		with (obj_article_solid)
		{
			 instance_destroy();
		exit;
		}
	}
}

if (free == false)
{
    is_jump = 0;
    sound_stop( sound_get( "grenade_jump_lp_01" ) );
    fall_sound = 0;
}


if (is_jump == 1)
{
//    fall_through = true;
    if fall_sound == 0
    {
    	fall_sound = 1;
    }
}

if fall_sound == 1 && is_jump = 1
{
	sound_play( sound_get( "grenade_jump_lp_01" ) );
	fall_sfx_loop = 200;
	fall_sound = 2;
}

if (is_jump == 0)
{
    air_friction = .02;
    gravity_speed = .65;
}
if fall_sfx_loop == 1
{
	fall_sound = 1;
}
if fall_sfx_loop > 0
{
	fall_sfx_loop = fall_sfx_loop -1;
}
det_timer += -1;

if (fling_toggle == 1)
{
    x = x+ (spr_dir * 200);
    y = y-50;
    
    hsp = 7.5 * spr_dir;
    vsp = vsp - 7;
    set_state(PS_PRATFALL);
    fling_toggle = 0;
}

if (attack = AT_BAIR && window == 2 && window_timer == 13) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    stop_timer = 20;
    bair_count++;
}

if (stop_timer > 0)
{
    stop_timer += -1;
    vsp = 0;
}

if (free == false)
{  
	vsp_bonus = -0.3;
	bair_count = 0;
}

if (sticky_count > 2)
{
	with (oldest)
	{
		state = 2;
		state_timer = 0;
		if (obj_article2.strength > 0)
		{
			det_timer = 5;
   			is_jump = true;
   			reminder_timer = 0;
		}
	}
}

if (position_empty(x+50, y-10))
{
	dattackcollide = 1;
}
else
{
	dattackcollide = 0;
}

if looseboost_timer > 0 
{
	looseboost_timer = looseboost_timer - 1;
	vsp = bair_can_vsp;
}
if(!free)
{
    move_cooldown[AT_BAIR] = 1;
}
with (sticky_reminder)
{
	x = other.x;
	y = other.y;
}

// vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
/*if (attack == AT_NSPECIAL) // blow up arrow
{
    if (is_arrow_out())
        attack = AT_NSPECIAL_2;
}

if (attack == AT_DSPECIAL) //dspec can't shoot if arrow is alr out
{
    dspec_shoot = is_arrow_out();
}*/

//Nspecial Cooldown

if attack == AT_DSPECIAL {
	if(nspec_charge < blue_arrow_timer){
		should_red_arrow = true;
    	reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED);
    	reset_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE);
    	reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER);
		reset_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START)
	}
	if( nspec_charge >= blue_arrow_timer)
    {
    	should_red_arrow = false;
    	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 10);
    	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
		set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .8);
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .8);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .8);
		set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 361);
		set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11)
    }
    clear_button_buffer(PC_SPECIAL_PRESSED);
    dspec_reverse = false;
}

if (attack == AT_TAUNT)
{
	if up_down
	{
		set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("flute_megalovania"));
		set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
	}
	else if left_down or right_down
	{
		set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("flute_acctown"));
		reset_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE);
	}
	else if attack_down
	{
		set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("flute_lycatheme"));
		reset_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE);		
	}
	else if down_down and tMenuState == -1 and inPractice
	{
		//TRIGGER MENU
		print_debug("GOT IT")
		tMenuState = 0;
		attack_end();
		//attack = AT_TAUNT_2;
	}
	else
	{
		reset_window_value(AT_TAUNT, 2, AG_WINDOW_SFX);
		set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
	}
}


if (find_wisp() != -1) //if you have wisps
{
    wisp_attack = true;
    switch (attack)
    {
        /*case AT_NSPECIAL:
            wisp_attack = true;
            if should_red_arrow should_red_arrow = false;
            reset_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT)
            break;*/
        case AT_DSPECIAL: // dspec uses nspec stuff too
            wisp_attack = true;
            reset_attack_value(AT_NSPECIAL, AG_SPRITE);
            reset_attack_value(AT_NSPECIAL, AG_AIR_SPRITE);
            reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE);
            break;
        case AT_USPECIAL:
            wisp_attack = !uspec_first;
            if (!uspec_first)
            {
                destroy_wisp(find_wisp());
                attack = AT_USPECIAL;
                set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, find_wisp() == -1 ? 7 : 1);
            }
            else
            {
                set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1);
                uspec_first = false;
                attack = AT_USPECIAL_2;
            }
            break;
        case AT_FSPECIAL:
            
            break;
    }
    
}
else
{
    wisp_attack = false;
    
    switch (attack)
    {
        case AT_USPECIAL:
            attack = AT_USPECIAL_2;
            set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 7);
            break;
    }
}


if attack == AT_NSPECIAL {
	reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX)
	reset_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT);
	reset_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX);
}

if (nspec_charge >= blue_arrow_timer) {
	switch attack {
		case AT_FSTRONG:
			nspec_charge = 0;
			flamecharge = false;
			attack = AT_FSTRONG_2
		break;
		case AT_USTRONG:
			nspec_charge = 0;
			flamecharge = false;
			attack = AT_USTRONG_2
		break;
		case AT_DSTRONG:
			nspec_charge = 0;
			flamecharge = false;
			attack = AT_DSTRONG_2
		break;
	}
}

if attack == AT_FSTRONG || attack == AT_FSTRONG_2 {
	reset_hitbox_value(attack, 1, HG_ANGLE);
	reset_hitbox_value(attack, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING);
}

//DEBUG SHIT
//if attack == AT_TAUNT
//{
//    with (obj_article1) instance_destroy();
//    wisps = [-1,-1,-1];
//    wisp_init = 0;
//}

//song_is_playing = (attack == AT_TAUNT && !song_is_playing)
//if song_is_playing
//{
//    sound_play(sound_get("song_open"))
//    attack_end()
//}

//strong red to blue effects
//flamecharge = false;
#define find_wisp
//Return: real, -1 if failed
//Takes the wisps array and sees if there is any object in it.
//If there is, return the index of the first one found starting from the end.
i = 2;
while (wisps[i] == -1)
{
    i = (i == 0) ? -1 : i-1;
    if (i == -1) break; // to avoid out of bounds errors
}
return i;

#define destroy_wisp
//Return: none
//Removes wisp from the array.
if argument0 != -1 //idiot proofing
{
    wisps[argument0] = -1;
}

#define is_arrow_out()
{
    with (pHitBox)
    {
        if (orig_player == other.player && attack == AT_NSPECIAL && hbox_num == 1)
        {
            return true;
        }
    }
    return false;
}
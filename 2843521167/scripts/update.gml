//update.gml
if (!free || state == PS_WALL_JUMP || state == PS_HITSTUN || state == PS_HITSTUN_LAND || state == PS_TUMBLE)
{
    move_cooldown[AT_USPECIAL] = 0;
    move_cooldown[AT_FSPECIAL] = 0;
    if (move_cooldown[AT_DSPECIAL] > 240)
    {
    move_cooldown[AT_DSPECIAL] = 180;
    }
}

var attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR); //checks state, if it's not in a var it doesn't work for some reason
if (jab_parry_check && !attacking)
{
    if (attack != AT_JAB) //if we are in any attack that isn't jab
    {
        set_state(free ? PS_PRATFALL : PS_PRATLAND); //set to prat state
        was_parried = true; //set was_parried to true (just in case)
    }
    jab_parry_check = false; //regardless of attack, set the flag back to false
}

with (asset_get("oPlayer"))
{  
    if (pastelle_soaked && pastelle_soaked_id == other.id && !hitpause) 
	{
		pastelle_soaked_time--;
		if (pastelle_soaked_time <= 0)
		{
			pastelle_soaked = false;
		}
	}
	if (state == PS_RESPAWN || state == PS_DEAD)
	{
		pastelle_soaked = false;
		pastelle_soaked_time = 0;
	}
    if (pastelle_soaked)
    {
	outline_color = [0, 40, 255];
	init_shader();
	
    }
    if (!pastelle_soaked)
    {
	outline_color = [0, 0, 0];
	init_shader();

    }
  }

with (asset_get("oPlayer")) {
			
	if (pastelle_soaked && pastelle_soaked_id == other.id && !hitpause) 
	{
		pastelle_soaked_time--;
		if (pastelle_soaked_time <= 0)
		{
			pastelle_soaked = false;
		}
	}
	if (state == PS_RESPAWN || state == PS_DEAD)
	{
		pastelle_soaked = false;
		pastelle_soaked_time = 0;

	}
}






//Put this above all the #defines in your script
prep_hitboxes();

//Put this at the very bottom of the script, with the rest of your #defines.
#define prep_hitboxes
//Applies the hitbox sprites and prepares them to be drawn (with color!)
with (pHitBox) if player_id == other {
    if "col" not in self {
        with other {
            other.col = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_COLOR);
            if other.col == 0 other.col = c_red;
            other.shape = get_hitbox_value(other.attack, other.hbox_num, HG_SHAPE)
            other.draw_colored = true;
            if other.type == 1
                other.sprite_index = __hb_hd_spr[other.shape];
            else if get_hitbox_value(other.attack, other.hbox_num, HG_PROJECTILE_MASK) == -1
                other.mask_index = __hb_hd_spr[other.shape];
            else 
                other.draw_colored = false;
            other.draw_spr = __hb_draw_spr;
        }
    }
}
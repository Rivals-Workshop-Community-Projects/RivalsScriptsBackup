  user_event(13);
  
 if (phone_cheats[cheat_bonk] == 0) {
 	  if(attack == AT_FSTRONG)
{
   if( 1 > random_func(0, 20, true))
    {
        if (spr_dir = 1){
       set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("sfx_bonk"));
           bonk = true;

        } else {
       set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("sfx_bonk"));
          bonk = true;
    }} else {
    	reset_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX);
    	bonk = false;
    }}} 
    
    if (phone_cheats[cheat_bonk] == 1) {
    	 	  if(attack == AT_FSTRONG)
{
   if( 20 > random_func(0, 20, true))
    {
        if (spr_dir = 1){
       set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("sfx_bonk"));
           bonk = true;

        } else {
       set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("sfx_bonk"));
          bonk = true;
    }} else {
    	reset_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX);
    	bonk = false;
}}}

/*if(attack == AT_FSTRONG && bonk = true && window = 3)
{
       set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("sfx_bonk"));
    } 
    else 
    {
      set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
    } */

if (attack == AT_DTILT && moist_level = 3){
	  		set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt_mud"));
  		set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_mud_hurt"));
  		set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 0);

} else {
	    	reset_attack_value(AT_DTILT, AG_SPRITE);
    	reset_attack_value(AT_DTILT, AG_HURTBOX_SPRITE);
  		reset_hitbox_value(AT_DTILT, 1, HG_HITBOX_X);
}

if (attack == AT_TAUNT)
{	if (up_down)
	{   attack = AT_TAUNT_2;
}}

//for meter purposes
if attack == AT_DSPECIAL 
{
    moist_gained = false;
}

//side b schiz
if (attack == AT_FSPECIAL)
{
    switch moist_level {
        default:
        case 1:    
            attack = AT_FSPECIAL;
            //set_attack(AT_FSPECIAL);
        break;
        
        case 3:
            attack = AT_FSPECIAL_2;
            //set_attack(AT_FSPECIAL_2);
        
             if (attack == AT_FSPECIAL_2 && free)
             {
                attack = AT_FSPECIAL;
                //set_attack(AT_FSPECIAL_AIR);
             }
        break;
    }
}

if ((attack == AT_USPECIAL) && on_mud) 
{
        attack = AT_USPECIAL_2;
}

if ((attack == AT_DSTRONG) && on_mud) 
{
        attack = AT_DSTRONG_2;
}

if ((attack == AT_DSPECIAL) && free) 
{
        attack = AT_DSPECIAL_2;
}


if (get_training_cpu_action() != CPU_FIGHT) 
{
    if attack == AT_TAUNT 
    {
        mud_training_level = 0;
    }
}


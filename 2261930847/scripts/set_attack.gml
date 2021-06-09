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


if (attack == AT_TAUNT)
{if (up_down)
	{   attack = AT_TAUNT_2;}}

//for meter purposes
if attack == AT_DSPECIAL 
{moist_gained = false;}

//side b schiz
if (attack == AT_FSPECIAL)
{
    switch moist_level {
        default:
        case 1:    
            attack = AT_FSPECIAL;
        break;
        case 3:
            moist_rn -= 50;
            attack = AT_FSPECIAL_2;
             if (attack == AT_FSPECIAL_2 && free)
             {attack = AT_FSPECIAL;}
        break;}}
        
if ((attack == AT_UTILT) && (moist_level = 2 || moist_level = 3)){
	attack = AT_UTILT_2;
}

if ((attack == AT_USPECIAL) && !free && moist_level = 3) 
{attack = AT_USPECIAL_2;}

if ((attack == AT_DSTRONG) && moist_level = 3) 
{attack = AT_DSTRONG_2;}

if ((attack == AT_FSTRONG) && moist_level = 3) 
{attack = AT_FSTRONG_2;}

if ((attack == AT_DSPECIAL) && free) 
{attack = AT_DSPECIAL_2;}

if (get_training_cpu_action() != CPU_FIGHT) 
{
    if attack == AT_TAUNT 
    {
        mud_training_level = 0;
    }
}

if has_rune("H") && attack == AT_USPECIAL{
	attack = AT_USPECIAL_2;
}

if has_rune("I") && attack == AT_DSTRONG{
	attack = AT_DSTRONG_2;
}



if has_rune("L") && attack == AT_FSPECIAL{
	attack = AT_FSPECIAL_2;
}


if has_rune("O") && attack == AT_USTRONG{
	attack = AT_USTRONG_2;
}

//After image

if (state = PS_WAVELAND)
{
    if(state_timer % 4 == 0 && !hitpause){
      trail = instance_create(x, y, "obj_article1");
      trail.image_index = image_index;
    }
    if(state_timer >= 24){
      trail.state = 1;
    }
}

if (state == PS_SPAWN) 
{
  sprite_index = sprite_get( "entrance" );
  idle_anim_speed = .22;
}
else
{
  idle_anim_speed = .13;
}

/*
if ((state == PS_DOUBLE_JUMP) || (state == PS_FIRST_JUMP)) and (hsp > 6.5 || hsp < 6.5) and (attack == AT_NSPECIAL)
{
	if(state_timer % 5 == 0 && !hitpause)
    {
      trail = instance_create(x, y, "obj_article1");
      trail.image_index = image_index;
    }
}
*/



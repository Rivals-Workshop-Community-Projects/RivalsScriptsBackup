if attack == AT_NSPECIAL {
	player_id.attack_cooldown[AT_NSPECIAL] = 90
}


//FSPECIAL Charge shot
if (attack == AT_FSPECIAL_AIR && hbox_num == 2)
{
   if (is_exploding = true)
   {
       hsp = 0; vsp = 0; //lock in place
       hitbox_timer = 0;
       explode_timer++;

      if (explode_timer == 4 || explode_timer == 8)
      {
         create_hitbox(AT_FSPECIAL_AIR, 3, x, y);
		}
      else if (explode_timer >= 12) //finisher
      {
         create_hitbox(AT_FSPECIAL_AIR, 4, x, y);
         destroyed = true;
      }
   }
   else if (hbox_num != 1)
   {
	   hsp += spr_dir * 0.5;
	   if (hsp > 14)
      { 
		   hsp = 12;
	   }
   }

}
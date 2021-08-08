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


if (attack == AT_FSPECIAL_2 && hbox_num == 1)
{
	with (pHurtBox) {
		if (playerID == other.player_id) continue;
		if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, other, 1, 0) {
			other.in_player[player].active = true;
			other.in_player[player].ztc_hit_x = x;
			other.in_player[player].ztc_hit_y = y - (bbox_bottom - bbox_top)/2;
		}
		with (other) {
	    	if (in_player[other.player].timer == 1)
	    	{
		         var hb = create_hitbox(AT_FSPECIAL_2, 2, round(in_player[other.player].ztc_hit_x),  round(in_player[other.player].ztc_hit_y));
		         hb.ztc_hit_x = round(in_player[other.player].ztc_hit_x);
		         hb.ztc_hit_y = round(in_player[other.player].ztc_hit_y);
			}
	    	if (in_player[other.player].timer == 7)
	    	{
		         var hb = create_hitbox(AT_FSPECIAL_2, 3, round(in_player[other.player].ztc_hit_x),  round(in_player[other.player].ztc_hit_y));
		         hb.ztc_hit_x = round(in_player[other.player].ztc_hit_x);
		         hb.ztc_hit_y = round(in_player[other.player].ztc_hit_y);
			}
	    	if (in_player[other.player].timer == 13)
	    	{
		         var hb = create_hitbox(AT_FSPECIAL_2, 4, round(in_player[other.player].ztc_hit_x), round(in_player[other.player].ztc_hit_y));
		         hb.ztc_hit_x = round(in_player[other.player].ztc_hit_x);
		         hb.ztc_hit_y = round(in_player[other.player].ztc_hit_y);
			}
	    	if (in_player[other.player].timer == 19)
	    	{
		         var hb = create_hitbox(AT_FSPECIAL_2, 5, round(in_player[other.player].ztc_hit_x), round(in_player[other.player].ztc_hit_y));
		         hb.ztc_hit_x = round(in_player[other.player].ztc_hit_x);
		         hb.ztc_hit_y =round(in_player[other.player].ztc_hit_y);
			}
		   if (in_player[other.player].active)
		   {
				in_player[other.player].timer++;
		   }
	   }
	}
   hsp += spr_dir * 2;
   if (hsp > 18)
  { 
	   hsp = 18;
   }
   
}
if (my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num = 2)
{
    dattack_bounce++;
}

if (my_hitboxID.attack == AT_FSTRONG) 
{
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) 
      {
		
          //if (!my_hitboxID.in_hitpause)
          //{
		  destroy_hitboxes();
		  attack_end();
		  set_attack(AT_FSTRONG_2); 
              hurtboxID.sprite_index = sprite_get("fstrong2_hurt");
          //}
		
		if (!instance_exists(grabbed_player_obj)) grabbed_player_obj = hit_player_obj;
		else 
            {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y, hit_player_obj.x, hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) grabbed_player_obj = hit_player_obj;
		}
	}
}

if (my_hitboxID.attack != AT_DSPECIAL)
{
    if (instance_exists(noisefire_ins))
    {
        noisefire_ins.player_contact = true;
    }
}
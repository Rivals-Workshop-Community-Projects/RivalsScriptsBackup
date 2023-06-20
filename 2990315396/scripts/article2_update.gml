//state list
//0 - out
//1 - fier
//2 - dissipate
//3 - destroy

switch (state)
{

    case 0:

        var _frame_count = (fireball_loops*2)+1;
        var _current_frame = ceil(((state_timer/lifetime)*_frame_count));
        if (_current_frame >= _frame_count) image_index = 2;
        else image_index = _current_frame % 2;
        image_index = clamp(image_index, 0, 2)

        hsp = hsp;
        vsp = vsp;
        
	  if (!instance_exists(hbox))
		hbox = create_hitbox(AT_DSPECIAL, 1, round(x+hsp), round(y+vsp+4));
		else
		{
			hbox.x = round(x+hsp);
			hbox.y = round(y+vsp+4);
			hbox.hitbox_timer = 0;
                  if (hbox.was_parried)
                  {
                      if (!parried)
                      {
                          parried = true;
                          parried_frame = true;
                      }
                      if (parried_frame)
                      {
			        hsp = -hsp;
                      }
                  }
                  if (hbox.has_hit || hsp = 0 || vsp = 0 || !free)
                  {
                      state = 1;
                      state_timer = 0;
                      vsp = 0.5;
                      //destroy_hitboxes();
                      hbox_owner = hbox.player;
                      hbox.destroyed = true;
                      hbox = noone;
                      sound_play(asset_get("sfx_zetter_downb"));
                  }
		}

        if (state_timer >= lifetime || place_meeting(x, y, asset_get("plasma_field_obj")) || (instance_exists(hbox) && hbox.destroyed = true))
        {
            if (state_timer < lifetime) spawn_hit_fx(x, y+16, 302);
            state = 3;
            state_timer = 0;
            hbox = noone;
        }
    break;

    //friarie
    case 1:
        image_index = clamp(image_index, 3, 8)

        if ((fire_loops >= fire_loops_max && frame_update >= 2) || player_contact)
        {
            state = 2;
            state_timer = 0;
        }
        else if (frame_update >= 2 && image_index = 8)
        {
            image_index = 5;
            frame_update = 0;
            fire_loops++;
        }
        else if (frame_update >= 2 && image_index != 8)
        {
            image_index++;
            frame_update = 0;
        }
        else frame_update++;
        hsp = hsp*0.8;
        vsp += grav;
   
        if (frame_update = 0 && (image_index = 5)) 
        {
             if (fire_loops >= fire_loops_max) fire_hbox = create_hitbox(AT_DSPECIAL, 3, round(x), round(y-6));
             else fire_hbox = create_hitbox(AT_DSPECIAL, 2, round(x), round(y-6));
             fire_hbox.player = hbox_owner;
        }

    break;

    //goobdye frarter :(
    case 2:
        image_index = clamp(image_index, 9, 11)

        if (frame_update >= 2 && image_index = 11)
        {
            state = 3;
            state_timer = 0;
        }
        else if (frame_update >= 2 && image_index != 11)
        {
            image_index++;
            frame_update = 0;
        }
        else frame_update++;
        hsp = 0;
        vsp += grav;
        //if (fire_hbox != noone) fire_hbox.destroyed = true;

    break;

    //destroy
    case 3:

        if (hbox != noone) hbox.destroyed = true;
        //hbox.destroyed = true;
        instance_destroy();
        exit;

    break;

}

player_contact = false;
prev_hsp = hsp;
prev_vsp = vsp;
state_timer++;
parried_frame = false;

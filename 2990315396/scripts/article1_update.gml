//state list
//0 - out
//1 - destroy

switch (state)
{

    case 0:
        vsp = min(10, vsp+grav);
        if (!free)
        {
           if (bounces < max_bounces)
           {
               bounces++;
               vsp = min(-prev_vsp*0.8, -7)
               hsp = prev_hsp*0.6
               spawn_hit_fx(x, y+16, 302);
               sound_play(asset_get("sfx_blow_medium2"));
           }
           else 
           {
               state = 1;
               state_timer = 0;
           }
        }
        if (hsp = 0)
        {
           if (bounces < max_bounces)
           {
               bounces++;
               vsp = min(prev_vsp, -6)
               hsp = -prev_hsp*0.4
               spawn_hit_fx(x+16*spr_dir, y, 302);
               sound_play(asset_get("sfx_blow_medium2"));
               spr_dir = -spr_dir;
           }
           else
           {
               state = 1;
               state_timer = 0;
           }
        }
        
	  if (!instance_exists(hbox))
		hbox = create_hitbox(AT_FSPECIAL, 1, round(x+hsp), round(y+vsp));
		else
		{
			hbox.x = round(x+hsp);
			hbox.y = round(y+vsp);
			hbox.hitbox_timer = 0;
                  if (hbox.has_hit)
                  {
                      state = 1;
                      state_timer = 0;
                      explosion_hbox_on = true;
                  }
                  if (hbox.was_parried)
                  {
                      if (!parried)
                      {
                          parried = true;
                          parried_frame = true;
                      }
                      if (parried_frame)
                      {
			        //hsp = -hsp;
			        //vsp = min(-vsp, 0);

                          hsp = -init_hsp;
                          vsp = init_vsp;
                          bounces = 0;
                          state_timer = 0;
                      }
                  }
		}
        
        if (state_timer >= 90 || place_meeting(x, y, asset_get("plasma_field_obj")) || hbox.destroyed)
        {
            state = 1;
            state_timer = 0;
            if (state_timer >= 90) explosion_hbox_on = true;
            if (hbox.destroyed) hbox = noone;
        }

        frame_update_cap = 1 + bounces*2;
        if (frame_update >= frame_update_cap && image_index != 9)
        {
            image_index++;
            frame_update = 0;
        }
        else if (frame_update >= frame_update_cap && image_index = 9)
        {
            image_index = 0;
            frame_update = 0;
        }
        else frame_update++;

    if (hbox != noone)
    {
        bomb_player = hbox.player
    }       
    break;

    //destroy
    case 1:

        if (explosion_hbox_on)
        {
        if (explosion_hbox_out) instance_destroy();
        var _explosion_hbox = create_hitbox(AT_FSPECIAL, 2, round(x), round(y));
        _explosion_hbox.player = bomb_player;
        explosion_hbox_out = true;
        }
        var _explosion_fx = spawn_hit_fx(x, y, noise_explosion);
        _explosion_fx.depth = player_id.depth - 1;
        sound_play(sound_get("sfx_explosion"), 0, 0, 0.5);
        if (hbox != noone)
        {
            hbox.destroyed = true;
            hbox = noone;
        }
        instance_destroy();
        exit;

    break;
}



prev_hsp = hsp;
prev_vsp = vsp;
state_timer++;
parried_frame = false;

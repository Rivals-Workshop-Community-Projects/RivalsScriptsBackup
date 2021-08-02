// Update
/*
* STATES:
*   Speed:
*   0 - Spawning
*   1 - Active
*   2 - Shatter
*   3 - Despawn
*
*   Boom:
*   4 - Spawning
*   5 - Active
*   6 - Shatter
*   7 - Despawn
*
*/

// Delete the Rune or Mirror if they're in the field
if (place_meeting(x, y, asset_get("plasma_field_obj")) && (state != 2 and state != 3 and state != 6 and state != 7)) {
    sound_play(asset_get("sfx_clairen_hit_med"));
    spawn_hit_fx(floor(x),floor(y),256);
    // Mirror Smacked
    if state == 0 or state == 1{
        setState(3);
    }
    // Rune Smacked
    if state == 4 or state == 5{
        setState(7);
    }
}

if flash{
	if flash_timer % 24 < 5{
		art_col = c_black;
	} else {
		art_col = get_player_hud_color(player_id.player);
	}
	flash_timer++;
}

// Delete the rune if it goes off stage
if (y > room_height + 100 && (state != 6 and state != 7 and state != 2 and state != 3)){
	// Remove Mirror
	if (state == 0 or state == 1){
	    setState(3);
	}

	// Remove Rune
	if (state == 4 or state == 5){
	    setState(7);
	}
}

if soundplayed{
	soundplayed = false;
}

if state < 4{
	offscreen_track = 9;
} else {
	offscreen_track = 8;
}

// State Handler
switch(state){

    // Speed Rune
    // Makes N-Special projectiles faster
    // Makes F-Special last twice as long
    case 0: // Spawn
        if (state_timer == 28){
        	sound_play(asset_get("sfx_boss_shine"));
          setState(1)
        }
        break;

    case 1: // Active
        //lifetime--;
        // Checks to see if it's meeting with the article
        //God help any lost souls who tred here. This is not a place of honor.
        with asset_get("pHitBox")
          {
          if (place_meeting(x, y, other))
            {
            //If the side-b detection box is touching the rune, it'll teleport the box there,
            //where it'll then spawn the actual attack's hitbox.
            if (player_id == other.player_id and attack == AT_FSPECIAL and type == 2 and hbox_num == 3)
              {
				sound_play(asset_get("sfx_abyss_hex_hit"));
				soundplayed = true;

	        	player_id.explosion_type = 1;
	            x = other.x;
	            y = other.y;
	            //create_hitbox(AT_FSPECIAL, 4, x, y);
              }

            if (player_id != other.player_id)
              {
              with other
                {
  	            // shatter the rune
  	            setState(2);
                }

	            sound_play(sound_effect);
	            spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);

              if type == 2 and tracking_target == false and enemies != 1 and !transcendant
                {
                print_debug("Projectile destruction test succeeded.")
                destroyed = true;
                }
              else
                {
                print_debug("Projectile destroy test failed.")
                with player_id
                  {
                  old_hsp = hsp;
    	            old_vsp = vsp;

                  hitstop = other.hitpause+other.damage*other.hitpause_growth*.05-2;
                  hitpause = true;
                  }
                }
              }
            }
        }

        with player_id
          {
        	if place_meeting(x, y, other)
            {
	        	if attack == AT_USPECIAL and window >= 2
              {
	        		// return that the rune was touched
	        		speed_rune_touched = true;
	        		// restore double jumps
	        		djumps = 0;
	        		// make a sound
	        		// shatter rune
              with other
                {
                //sound_play(asset_get("sfx_abyss_explosion"));
                setState(2);
                }
	        	  }
        	  }
          }

        // Delete if Lifetime == 0
        if lifetime == 0
          {
          setState(3);
          }
        break;

    case 2: // Shatter
        // turn off collisions
        ignores_walls = true;
        // Shatter sound
        if (state_timer == 1){
            // play sound of shatter
            sound_play(asset_get("sfx_ice_shatter_big"));
        }
        // Now shatter
        if state_timer == 12{
        	player_id.summons -= 1;
            setState(3);
        }

        break;

    case 3: // Despawn
        instance_destroy();
        player_id.summon_tracker[rune_id] = noone;
        break;


    // Explosion Rune
    //Explodes when hit with N-Special
    //Makes F-Special bigger
    case 4: // Spawn
        if (state_timer == 44){
        	sound_play(asset_get("sfx_boss_shine"));
            setState(5);
        }
        break;

    case 5: // Active

        //lifetime--;
        // Checks to see if it's meeting with the article
        with asset_get("pHitBox"){
            if (place_meeting(x, y, other)){
                //If the side-b detection box is touching the rune, it'll teleport the box there,
                //where it'll then spawn the actual attack's hitbox.
                if (player_id == other.player_id and attack == AT_FSPECIAL and type == 2 and hbox_num == 3)
                  {
                  	sound_play(asset_get("sfx_may_arc_hit"));
                  	soundplayed = true;

                  	player_id.explosion_type = 1;
	                  x = other.x;
	                  y = other.y;
	                  with other{
	                  	setState(6);
	                  }
                  }

                if (player_id != other.player_id)
                  {
                  with other
                    {
        	          // shatter the rune
        	          setState(6);
                    createhitbox = false;
                    }

      	          sound_play(sound_effect);
      	          spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);

                  if type == 2 and tracking_target == false and enemies != 1 and !transcendant
                    {
                    print_debug("Projectile destruction test succeeded.")
                    destroyed = true;
                    }
                  else
                    {
                    print_debug("Projectile destroy test failed.")
                    with player_id
                      {
                      old_hsp = hsp;
          	           old_vsp = vsp;

                      hitstop = other.hitpause+other.damage*other.hitpause_growth*.05-2;
                      hitpause = true;
                      }
                    }
                  }
              }
        }

        with player_id{
        	if place_meeting(x, y, other){
	        	if attack == AT_USPECIAL and window >= 2{
	        		// create hitbox
	        		create_hitbox(AT_USPECIAL, 3, other.x-1, other.y);
	        		
	        		boom_rune_touched = true;
	        		
	        		// shatter rune
                    with other
                    {
                    setState(6);
                    }
	        	}
        	}
        }

        // Delete if Lifetime == 0
        if lifetime == 0{
            setState(7);
        }

        break;

    case 6: // Shatter
        // turn off collisions
        ignores_walls = true;
        // When it shatters make a hitbox
        if (state_timer == 1)
          {
          sound_play(asset_get("sfx_ice_shatter_big"));
          if createhitbox{
        	create_hitbox(AT_DSPECIAL, 1, x-1, y);
          }
          }

        // Now Delete it
        if state_timer == 12{
        	player_id.summons -= 1;
            setState(7);
        }

        break;

    case 7: // Despawn
        instance_destroy();
        player_id.summon_tracker[rune_id] = noone;
        exit;

}


// Animation Handler
switch(anim_type[state]){
    case 0:
        var frames = 4;
        var frame_dur = 3;
        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
        break;
    case 1: //unused, just from template
        var frames = 20;
        var frame_dur = 3;
        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
        break;
    case 2:    // SPEEN
        image_angle += 2;
        break;
    case 3:    // SPEEN backwards
        image_angle -= .5;
        break;
    case 4:    // Shatter
        var frames = 5;
        var frame_dur = 3;
        image_angle += 2;
        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
        break;
    case 5:    // Spawn
        var frames = 5;
        var frame_dur = 6;
        image_angle += 2;
        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
        break;
    case 6:    // Shatter (Boom)
        var frames = 4;
        var frame_dur = 5;
        image_angle -= .5;
        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
        break;
    case 7:    // Spawn (boom)
        var frames = 8;
        var frame_dur = 6;
        image_angle -= .5;
        image_index = round((state_timer mod (frames * frame_dur)) / frame_dur);
        break;
}

//If not already at the sprite it should be, switch to the new sprite
if (sprite_index != sprite[state]){
    sprite_index = sprite[state];
}

state_timer += 1;

#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

prev_state = state;
state = new_state;
state_timer = 0;

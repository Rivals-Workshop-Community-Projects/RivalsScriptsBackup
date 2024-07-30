//La Reina article1_hit.gml

var hID = enemy_hitboxID;
if hID != most_recent_hitbox && (lifetime > 10 && !hitpause) && hID.hit_priority > 0 && window != 4 {
  hittable_hitpause_mult = 1;

    // We're gonna use this variable a lot so here's a shortened reference.


    if (hit_player_obj != player_id) { // prevent La Reina from immediately recalling a chair that an enemy hit
      player_id.move_cooldown[AT_NSPECIAL] = 60;
    } else {
      player_id.move_cooldown[AT_NSPECIAL] = 0; // but allow her to reactivate chair if she hits it herself
    }

     // Prevent the chair from hitting itself
    if (hit_player_obj != player_id) || (hID.attack != AT_NSPECIAL) {

      //Add hit-lockout
      can_be_hit[hit_player] = max(1, hID.no_other_hit);

      //Removed in Dakota patch
      /* // Destroy destroyable projectiles
      if hID.type == 2 && hID.enemies == 0 {
        hID.destroyed = true;
      } */

      // Spawn the move's visual effect at the average position of the chair | hitbox center
      with hit_player_obj { // Do it from the enemy's perspective to apply their palette to the hit affect
        spawn_hit_fx((hID.x + other.x)/2 + other.hsp, (hID.y + other.y)/2  + other.vsp - 20, hID.hit_effect); // the -20 here is a magic number to account for the chair's position being at its bottom.
      }
      // Play the move's on-hit sound effect (but not if we've already hit a player)
      if !hit_player_obj.has_hit_player {
        sound_play(hID.sound_effect);
        // special cases for on-hit effects
        if hit_player_obj.url == player_id.url {
          if hit_player_obj.attack == AT_NSPECIAL_2 {
            sound_play(player_id.rolling_hit_sfx);
          } else if hit_player_obj.attack == AT_FAIR && hID.hbox_num == 2 {
            sound_play( player_id.fair_sweetspot_sfx, false, noone, player_id.fair_sweetspot_volume );
          } else if hit_player_obj.attack == AT_UAIR && hID.hbox_num == 1 {
            sound_play(asset_get("sfx_clairen_swing_strong"), false, noone, 0.9, 0.9)
          } else if hit_player_obj.attack == AT_UAIR && hID.hbox_num == 2 {
            with hit_player_obj {
              var xoff = 10*spr_dir; yoff = - 30;
              /* var rightfx = spawn_hit_fx(hID.x+xoff, hID.y+yoff, 303);
              rightfx.spr_angle = 0;
              var rightfx = spawn_hit_fx(hID.x-xoff, hID.y+yoff, 303);
              rightfx.spr_dir = -spr_dir; */
              spawn_hit_fx(hID.x+0, hID.y+yoff, 301);
            }
          }
        }
      }

      // Feed the chair info about the hitbox and put it into the hitpause window
      window = 6; window_timer = 0;
      gethit_hitpause = hID.hitpause + hID.extra_hitpause;
      gethit_angle = hID.kb_angle;
      if gethit_angle == 361 {gethit_angle = 40;}
      gethit_spr_dir = hit_player_obj.spr_dir;
      gethit_knockback = (hID.kb_value + hID.kb_scale*6) * 1.4;
      gethit_grabbed = noone;
      gethit_postgrab = false;

      // Destroy destroyable projectiles and reduce the chair's knockback against all projectiles.
      if hID.type == 2 {
        if hID.enemies == 0 { hID.destroyed = true; }
        gethit_knockback = gethit_knockback * 0.5;
      }

      // Specific interactions for particular La Reina moves
      var hit_by_La_Reina = (hit_player_obj.url == player_id.url)
      if (hit_by_La_Reina || (hit_player_obj == player_id)) {

        // Dash attack, spike hitbox
        if hID.attack == 10 && (hID.hbox_num == 2) {
          hit_player_obj.window = 6; hit_player_obj.window_timer = 0; // Do the dash-attack spike pop-up
          gethit_knockback += 2;
          gethit_angle += 20;


        // GRABS --- welcome to the ~ Grab Zone ~
        } else if ( // Check every individual grab hitbox to see if it hit the chair

            // Strongs
           (hID.attack == AT_USTRONG && hID.hbox_num != 2) // Ustrong
        || (hID.attack == AT_FSTRONG && hID.hbox_num == 1) // Fstrong

            // Aerials
        || (hID.attack == AT_BAIR && hID.hbox_num < 3) // Bair
        || (hID.attack == AT_DAIR && hID.hbox_num != 2) // Dair
        || (hID.attack == AT_UAIR && hID.hbox_num == 1) // Uair

            // Specials
        || (hID.attack == AT_FSPECIAL && hID.hbox_num == 1) // Fspecial
        || (hID.attack == AT_USPECIAL && hID.hbox_num == 1) // Uspecial

          ) {
            // Make the chair the grab victim
            gethit_grabbed = hit_player_obj;
            with (hit_player_obj) { if (!has_hit_player) { grab_victim = other; } }

        // POST-GRAB - actual knockback-giving hitboxes
        } else if ( // Check every landing post-grab hitbox to see if it hit the chair

            // Strongs
           (hID.attack == AT_USTRONG && hID.hbox_num == 2) // Ustrong
        || (hID.attack == AT_FSTRONG && hID.hbox_num == 2) // Fstrong backthrow
        || (hID.attack == AT_FSTRONG && hID.hbox_num == 3) // Fstrong forwardthrow

            // Aerials
        /* || (hID.attack == AT_BAIR && hID.hbox_num == 3) // Bair
        || (hID.attack == AT_DAIR && hID.hbox_num == 2) // Dair */
        || (hID.attack == AT_UAIR && hID.hbox_num == 2) // Uair

            // Specials
        || (hID.attack == AT_FTHROW && hID.hbox_num == 1) // Fthrow
        /* || (hID.attack == AT_DTHROW && hID.hbox_num == 1) // Dthrow */
        || (hID.attack == AT_USPECIAL && hID.hbox_num == 2) // Uspecial

          ) {
            with player_id {
              if instance_exists(grab_victim) && instance_exists(myChair) && grab_victim == myChair {
                destroy_postgrab_hitbox_countdown = 5;
              }
            }
          //gethit_postgrab = true; //currently post-hits are deactivated.
        }
      }

    }

} else {
  hittable_hitpause_mult = 0;
}

gethit_hitpause_countdown = 1;

if (hit_player_obj != player_id) || (hID.attack != AT_NSPECIAL) && hID.hit_priority > 0 {
  most_recent_hitbox = hID;
}

// NSpecial Unique Stuff
if was_parried
  {
  hitbox_timer = 0;
  }

if (attack == AT_NSPECIAL){
    if hbox_num < 4{
        switch(hbox_num){
            case 1:
                if position_meeting(x, y + 14, asset_get("par_block")){
                    destroyed = true;
                }
                break;
            case 2:
                if position_meeting(x, y + 14, asset_get("par_block")){
                    destroyed = true;
                }
                break;
            case 3:
                if position_meeting(x, y + 24, asset_get("par_block")){
                    destroyed = true;
                }
                break;
        }
    }
    switch(hbox_num){
        case 3: // 2 Charge, Arcthunder
            if spr_dir == -1
              {
              if hsp > -7 and !tracking_target
                {
                hsp -= .5;
                }
              }
            else
              {
              if hsp < 7 and !tracking_target
                {
                hsp += .5;
                }
              }
            break;
        case 4: // 2 Charge Multihit
            if hitbox_timer == length{
                if player_id.multihit_count == player_id.multihit_cap{
                    next_explosion = create_hitbox(AT_NSPECIAL, 5, x, y);
                    next_explosion.player = player;
                    player_id.multihit_count = 0;
                } else {
                    next_explosion = create_hitbox(AT_NSPECIAL, 4, x, y);
                    next_explosion.player = player;
                    player_id.multihit_count += 1;
                }
            }
            break;
        case 6: //Thoron hit 1
          {
          if ((hitbox_timer % 3) == 0 and (speed_buffed == false))
            {
            next_shot = create_hitbox(AT_NSPECIAL, 7, x, y);
            next_shot.player = player;
            }
          if ((hitbox_timer % 2 == 0) and (speed_buffed))
            {
            next_shot = create_hitbox(AT_NSPECIAL, 7, x, y);
            next_shot.player = player;
            next_shot.speed_buffed = true;
            }
          break;
          }
        case 7: //Thoron hit 2
          {
          if (hitbox_timer == 4 and speed_buffed == false)
            {
            next_shot = create_hitbox(AT_NSPECIAL, 8, x, y)
            next_shot.player = player;
            }
          if (hitbox_timer == 2 and speed_buffed)
            {
            next_shot = create_hitbox(AT_NSPECIAL, 8, x, y)
            next_shot.player = player;
            }
          break;
          }
    }
}

//The code for F-Special's multihit.
//Hitbox 3 acts as a sort of... detection box, checking if the mirrors are-
//in the area. if they are, then it'll move there and spawn the next hitbox
//accordingly.

if (attack == AT_FSPECIAL){ 
    if hbox_num == 3{
        if place_meeting(x, y, player_id.summon_tracker[0]){
            // we have landing
            create_hitbox(AT_FSPECIAL, 4, player_id.summon_tracker[0].x, player_id.summon_tracker[0].y);
            player_id.snapped = true;
            player_id.summon_tracker[0].state = 3;
            player_id.summon_tracker[0].state_timer = 0;
            sound_play(asset_get("sfx_abyss_hex_hit"));
        } else {
            // check for the other rune
            if player_id.snapped == false and place_meeting(x, y, player_id.summon_tracker[1]){
                // we take those
                create_hitbox(AT_FSPECIAL, 4, player_id.summon_tracker[1].x, player_id.summon_tracker[1].y);
                player_id.snapped = true;
                player_id.summon_tracker[1].state = 3;
                player_id.summon_tracker[1].state_timer = 0;
                sound_play(asset_get("sfx_abyss_hex_hit"));
            }
        }
        if !place_meeting(x, y, player_id.summon_tracker[0]) and !place_meeting(x, y, player_id.summon_tracker[1]) and player_id.snapped == false{
            if hitbox_timer == length{
                create_hitbox(AT_FSPECIAL, 6, x, y);
            }
        }
    }
    if hitbox_timer == length{
        switch(hbox_num){
            case 6:
            case 2:
                spawn_hit_fx(x, y, player_id.vfx_fspecial_end);
                break;
            case 5:
                spawn_hit_fx(x, y, player_id.vfx_bigfspecial_end);
                break;
        }
    }
}


if (attack == AT_FSPECIAL and hitbox_timer == length and (hbox_num == 1 or hbox_num == 4))
  {
  if (player_id.explosion_count == player_id.explosion_cap) //If you hit the cap, spawn the last hit.
    {
        if player_id.snapped == false{
            create_hitbox(AT_FSPECIAL, 2, x, y);
        } else {
            create_hitbox(AT_FSPECIAL, 5, x , y);
        }
        player_id.explosion_cap = 2;
        player_id.explosion_count = 0;
        player_id.explosion_type = 0;
        //player_id.hitbox_spawned = false;
    }
  else //If you haven't hit the cap yet, make another weak hit, then add one to the counter.
    {
        if player_id.snapped == false{
            create_hitbox(AT_FSPECIAL, 1, x, y);
        } else {
            create_hitbox(AT_FSPECIAL, 4, x, y);
        }
        player_id.explosion_count += 1;
    }
  }
/*
if attack == AT_FSPECIAL and (hbox_num == 3 or hbox_num == 6){
    if position_meeting(x, y, player_id.summon_tracker[0]) and player_id.hitbox_spawned == false{
        create_hitbox(AT_FSPECIAL, 1,player_id.summon_tracker[0].x, player_id.summon_tracker[0].y);
        //player_id.hitbox_spawned = true;
    }
    if position_meeting(x, y, player_id.summon_tracker[1]) and player_id.hitbox_spawned == false{
        create_hitbox(AT_FSPECIAL, 1,player_id.summon_tracker[1].x, player_id.summon_tracker[1].y);
        //player_id.hitbox_spawned = true;
    }
}

if attack == AT_FSPECIAL
  {
    if player_id.stop_fspecial == true
        {
        destroyed = true;
        }
    player_id.stop_fspecial = false;
  }*/

/*
if (attack == AT_FSTRONG and hbox_num == 1){
    if has_hit{
        destroy_hitboxes();
        player_id.illusion.state = 2;
        player_id.illusion.state_timer = 0;
        player_id.illusion.hsp = 0;
    }
}*/

if attack == AT_USPECIAL and hbox_num == 1{
    // destroy proj if it hits floor
    if !free{
        destroyed = true;
        sound_play(asset_get("sfx_ice_fspecial_hit_ground"));
    }
}

//Rune bouncing code.
//I know we did the N-Special stuff higher up, but I'm putting this at the end
//for organizational reasons.

if attack == AT_NSPECIAL and place_meeting(x, y, obj_article1)
  {
  //print_debug("Rune collision detected.")
  if (hbox_num == 1 or hbox_num == 2 or hbox_num == 3 or hbox_num == 6)
    {
    hitrune = instance_place(x, y, obj_article1)

    //print_debug("Projectile valid.")

    if hitrune.player == player
      {
      //print_debug("Player is the same as rune's owner.")
      if hitrune.state == 1 or hitrune.state == 5
        {
        tracking_target = true;
        //print_debug("Rune's state is valid.")
        with hitrune //Set the rune's state to destroy it.
          {
          if state == 1 //If it's a speed rune, set the projectile to be sped up.
            {
            other.move_rate = other.move_rate * player_id.speed_multi;
            other.speed_buffed = true;
            //other.damage = round(other.damage * player_id.damage_multi);
            //other.damage_buffed = true;
            if (other.kb_scale != 0 or (other.kb_scale - .25 <= 0)){
                other.kb_scale = other.kb_scale - .25;
            }
            prev_state = state;
            state = 2;
            state_timer = 0;
            }
          }

        //print_debug("Speed buff active = " + string(speed_buffed))
        //Iterate through every rune to try to find the nearest valid rune.
        //If the next rune is not valid, it will set next_target to noone.
        var shortest_dist = 9999;
        var shortest_id = noone;
        var player_y_dist = -30;
        var next_target = noone;

        with (obj_article1)
          {
          if (player == other.player)
            {
            var curr_dist = point_distance(x, y, other.x, other.y);
            if (curr_dist < shortest_dist) and ((state == 1) or (state == 5))
              {
              shortest_dist = curr_dist;
              shortest_id = id;
              print_debug("Valid rune detected.")
              }
            }
          next_target = shortest_id;
          }

        //If it didn't find a rune to target, it'll move on to detecting the
        //Nearest enemy player to target them instead.
        if next_target == noone
          {
          print_debug("No valid rune detected. Searching for player target.")
          with (oPlayer)
            {
            if (player != other.player) and (get_player_team(player) != get_player_team(other.player))
              {
              var curr_dist = point_distance(x, y, other.x, other.y);
              if (curr_dist < shortest_dist)
                {
                shortest_dist = curr_dist;
                shortest_id = id;
                }
              }
            }
          next_target = shortest_id;

          //Prep for bounce. Setting variables for movement and lifespan.
          length = 180;
          through_platforms = 180;
          window_timer = 0;
          }
        else //If it's not going to a player, it needs to last forever so it gets to the next rune.
          {
          length = 999;
          through_platforms = 999;
          window_timer = 0;
          }

        //The code for moving to the target.
        //Buckle up. This is about to get a little messy.
        if (next_target.x > x) //If the rune is to the right of the projectile.
          {
          spr_dir = 1;

          //If it's targeting a player, aim a little more at their center.
          if next_target != obj_article1
            {
            direction = point_direction(x, y, next_target.x, next_target.y + player_y_dist);
            }
          else
            {
            direction = point_direction(x, y, next_target.x, next_target.y);
            }

          //direction = point_direction(x, y, next_target.x, next_target.y);
          proj_angle = direction;

          hsp = lengthdir_x(move_rate, direction);
          vsp = lengthdir_y(move_rate, direction);

          if hsp < 0
            {
              hsp = hsp * -1;
            }
          }

          if (next_target.x < x) //If the rune is to the left of the projectile.
            {
            spr_dir = -1;

            //If it's targeting a player, aim a little more at their center.
            if next_target != obj_article1
              {
              direction = point_direction(x, y, next_target.x, next_target.y + player_y_dist);
              }
            else
              {
              direction = point_direction(x, y, next_target.x, next_target.y);
              }
            proj_angle = 180 + direction;

            hsp = lengthdir_x(move_rate, direction);
            vsp = lengthdir_y(move_rate, direction);

            if hsp > 0
              {
              hsp = hsp * -1;
              }
            }

          //Sometimes the VSP goes the opposite direction. Dunno why.
          //This manually beats it into shape.
          if (next_target.y < y) and (vsp > 0) //Corrects rune above, VSP going down.
            {
            vsp = vsp * -1;
            }
          if (next_target.y > y) and (vsp < 0) //Corrects rune below, VSP going up.
            {
            vsp = vsp * -1;
            }
        }
      }
    }
  }

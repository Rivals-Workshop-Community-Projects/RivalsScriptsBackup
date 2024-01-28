//La Reina article1_update.gml

lifetime++;
window_timer++;
if pre_draw_index < 11 {
  pre_draw_index += 1;
  if pre_draw_index > 9 pre_draw_index = 0;
} else {
  pre_draw_index += 0.18;
  if window == 10 pre_draw_index += 0.18;
  //if !free {pre_draw_index = max(pre_draw_index, 15)}
  if pre_draw_index >= 16 {
    pre_draw_index = 5;
  }
}
shine_timer = max(0, shine_timer-1);

chair_drangle -= 36*0.75*spr_dir;
if chair_drangle < -360 chair_drangle += 360;

magnetring_anim++;
if magnetring_anim >= magnetring_animax {magnetring_anim = 0;}

/* Windows:
0: Creation
1: Toss arc from Nspecial
2: Idle
3: Pulled towards player

*/

var destroy_self = false; // Checks at the end of this file to destroy the chair if true.

//Initial spawn and transition into appropriate window depending on whether chair was spawned with Nspecial or Dspecial
//Note: Make an invisible frame for this window.
if (window == 0){
  pre_draw_index = 1;
  if player_id.attack == AT_DSPECIAL {pre_draw_index = 6;}
  outline_opacity = 0;

  //Modifies Nspecial arc based on player input.

  // Transition to correct window
  if (lifetime >= 1){
    if (player_id.attack == AT_DSPECIAL){
      window = 7; window_timer = 0;
    }
  }
}

// Set target for nspec pull
flytoward_x = player_id.x + 70*player_id.spr_dir;
flytoward_y = player_id.y - 20;

//Always face travel direction, except if the chair was hit, in which case do the opposite
if window != 5 {
  if (hsp > 0){
    spr_dir = 1;
    if window == 10 { spr_dir *= -1; }
  } else if (hsp < 0){
    spr_dir = -1;
    if window == 10 { spr_dir *= -1; }
  }
}

//Hitbox creation && flyspeed increaser && animation
if (window == 1 || window == 3){

  flyspeed = min(flyspeed + flyspeed_accel, flyspeed_max);

  if (!instance_exists(hitboxlock)){
    hitboxlock = create_hitbox(AT_NSPECIAL, 6, x-10*spr_dir, y-31);
    hitboxlock.owner = id;
  }

  if (window_timer >= 10){ window_timer = 0; }
  pre_draw_index = floor((window_timer) / 2);
}

//Hitbox locking
if (instance_exists(hitboxlock)){
  hitboxlock.x = hsp + x - 1 * spr_dir;
  hitboxlock.y = vsp + y;
}

//Nspecial toss and also tosses from grab-hits
if (window == 1){
  can_be_grounded = true;


  if !gethit_postgrab {
    // Set speeds
    hsp = nspecial_hspeed*tempfacing;
    if (window_timer == 2 && give_initial_vspeed){
      if (player_id.right_down){ nspecial_hspeed += 2.5*spr_dir; }
      if (player_id.left_down ){ nspecial_hspeed += -2.5*spr_dir; }
      vsp = nspecial_initial_vspeed;
      give_initial_vspeed = false;
    }
  } else {
    hsp *= 0.99;
  }

  // Apply gravity and cap terminal velocity
  vsp += chair_gravity;
  vsp = min(vsp, chair_max_fallspeed);

  // Move to inactive window on the ground
  if !free && vsp >= 0 && !give_initial_vspeed { window = 7; window_timer = 4; }

}//End of window 1

//Inactive
if (window == 2){
  can_be_grounded = true;
  if pre_draw_index >= 10 {
  } else {
    pre_draw_index = 5;
  }
  depth = player_id.depth + 2;

  //Deceleration
  if (free) { // Air decceleration
    vsp = min(vsp + chair_gravity, chair_max_fallspeed);
    hsp = hsp * 0.9;
  } else { // Ground decceleration
    try_landing();
    hsp = hsp * 0.5;
  }

  //Destroy the hitbox
  if (instance_exists(hitboxlock)) { instance_destroy(hitboxlock); }

}//End of window 2


//In which La Reina pulls the chair towards herself
if (window == 3){
  can_be_grounded = false; can_land = true;
  outline_opacity = min(1, outline_opacity + 0.1);

  //Catching the chair
  if (instance_exists(hitboxlock)){
    var margin = 10;
    if (x < (flytoward_x + margin) && x > (flytoward_x - margin) &&
        y < (flytoward_y + margin) && y > (flytoward_y - margin) &&
        player_id.special_down) {
      window = 8;
      window_timer = 0;

      with (player_id) {
        window = 6; //Transition to chair catch hit.
        window_timer = 0;
      }

    }
  }

  //Propel the chair towards the player
  var hugging_wall = false;
  var threshold = 24;
  if  (y > player_id.y && y >= stage_top)
  && ((x > stage_left  && x - stage_right < threshold)
  ||  (x < stage_right  && stage_left - x < threshold)) {
    hugging_wall = true;
  }

  var delta_x = flytoward_x - x;
  var delta_y = flytoward_y - y;
  var delta_total = sqrt(sqr(delta_x) + sqr(delta_y))
  var angle = arctan2(delta_y, delta_x);

  hsp = cos(angle) * min(flyspeed, delta_total);
  vsp = sin(angle) * min(flyspeed, delta_total);
  if hugging_wall { vsp = min(vsp, -flyspeed/2); }

  // small horizontal boost to prevent getting stuck on corners at weird offstage chair pulling angles
   if !free && ( (player_id.x < stage_left) || (player_id.x > stage_right) ){
     if abs(player_id.x - x) <= 100 { x += sign(player_id.x - x)*3; }
   }

  // If interrupted, change to the inactive window
  if (player_id.state != PS_ATTACK_AIR && player_id.state != PS_ATTACK_GROUND){
    window = 2;
  }
} else {//End of window 3
  outline_opacity = max(0, outline_opacity - 0.25);
}

//4: Catch the chair and raise the destruction flag.
if (window == 4){
  pre_draw_index = 8;
  hsp = 0; vsp = 0;
  destroy_self = true;
}

//5: Hold still for Down B dash
if (window == 5){
  pre_draw_index = 7;
  hsp = 0; vsp = 0;

  //Set the position for the player's dash target
  /* if(window_timer == 1){
    player_id.magnet_dash_x = x;
    player_id.magnet_dash_y = y-30;
  } */

  // Move to inactive window if the player's dash is interrupted
  if (player_id.state != PS_ATTACK_AIR || player_id.state != PS_ATTACK_GROUND){
    window = 2;
    window_timer = 0;
  }
}

//7: Bounce on ground (from Dspecial chair spawn, or landing after NSpec)
if (window == 7){
  //manual animation
  if (window_timer <= 1){
    pre_draw_index = 6;
  }
  else if (window_timer <= 3){
    pre_draw_index = 7;
  }
  else if (window_timer == 4){
    pre_draw_index = 5;
    vsp = -4;
    if can_land {
      sound_play(asset_get("sfx_land_light"));
      vsp = -6; spawn_base_dust(x, y+3, "land");
    };
    window = 2;
    window_timer = 2;
  }
  pre_draw_index = 12;
}

//Pre-destruction window, leads into 4
if (window == 8){
  pre_draw_index = 8;
  outline_opacity *= 0.5;
  depth = player_id.depth - 10;
  vsp = vsp * 0.2;
  hsp = hsp * 0.2;

  // Move to window 4
  if window_timer >= 2 {if (instance_exists(hitboxlock)) { instance_destroy(hitboxlock); }
  } else {
    pre_draw_index = 0;
    x = player_id.x + 10*player_id.spr_dir;
    y = player_id.y;
  }
  if (window_timer >= 4) { window = 4; window_timer = 0; }
}

///////
//SFX//
///////
if (window == 1 || window == 3){
  if(sfx_timer >= sfx_spinlooptime){
    sound_play(asset_get("sfx_clairen_arc_bounce"))
    sfx_timer = 0;
  }
  else if (sfx_timer < sfx_spinlooptime){
    sfx_timer += 1;
  }
}

// 6: Get hit - Wait in hitpause, then calculate momentum from the move
if (window == 6){
  pre_draw_index = 9;
  hsp = 0; vsp = 0;


  if (window_timer >= gethit_hitpause){
    hsp = min(lengthdir_x( gethit_knockback, gethit_angle ) * 1.4, 20) * gethit_spr_dir;
    if hsp > 0 {
      spr_dir = -1;
    } else if hsp < 0 {
      spr_dir = 1;
    }
    vsp = lengthdir_y( gethit_knockback, gethit_angle ) * 1;
    var min_vsp = 3;
    if vsp < min_vsp && vsp > -min_vsp { vsp = -min_vsp; }
    if (vsp > 0 && !free) { vsp = -vsp; }

    // Move to the got-hit window, unless the chair got grabbed instead
    window = 10; can_land = true;
    recently_hit = true;
    window_timer = 0;
    if gethit_grabbed { window = 11; }
    if gethit_postgrab { window = 1; give_initial_vspeed = false }
  }
}

//10: Inactive Post-getting-hit
if (window == 10){
  can_be_grounded = true;
  if pre_draw_index < 13 {pre_draw_index = 5;}
  depth = player_id.depth + 2;

  //Deceleration
  if (free) { // Air decceleration
    vsp = min(vsp + chair_gravity, chair_max_fallspeed);
    hsp = hsp * 0.98;
    if can_land && vsp > 8 {vibecheck = true;}
  } else { // Ground decceleration
    try_landing();
    hsp = hsp * 0.8;
  }

  //Destroy the hitbox
  if (instance_exists(hitboxlock)) { instance_destroy(hitboxlock); }

} else {
  recently_hit = false;
}//End of window 10

//11: Got grabbed
if (window == 11){
  can_be_grounded = false;
  pre_draw_index = 5;

  hsp = 0; vsp = 0;

  if gethit_grabbed != noone {
    with gethit_grabbed {
      if ((instance_exists(grab_victim) && (grab_victim != other))
      || !instance_exists(grab_victim)) {
        other.window = 2; other.window_timer = 0;
      }
    }
  } else {
    window = 2; window_timer = 0;
  }

  //Destroy the hitbox
  if (instance_exists(hitboxlock)) { instance_destroy(hitboxlock); }
}//End of window 10



// Destroys the chair within Clairen’s plasma field:
with (asset_get( "plasma_field_obj" )) {
  with (other.id) {
    if (point_distance(
      x + 10 * spr_dir,
      y,
      get_instance_x( other ),
      get_instance_y( other )
    ) < 180) {

      with player_id {
        // Disable the pull
        move_cooldown[AT_NSPECIAL] = max(2, move_cooldown[AT_NSPECIAL]);

        // End the pull if currently pulling
        if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
        && (attack == AT_DSPECIAL_2) && window < 4) {
          window = 4; window_timer = 0;
        }
      }
      // Move to inactive window
      if window == 1 || window == 3 {window = 2;}
      //Destroy the hitbox
      if (instance_exists(hitboxlock)) { instance_destroy(hitboxlock); }

      // Alternatively, just destroy the chair lol
      destroy_self = true;
      spawn_death_effect = true;
    }
  }
}

// adjust angle, frame and draw position




// Raise the destruction flag if the chair moves too far off screen,
// But not if the player is actively attempting to bring it back.
if (x > blastzone_right + 20 || x < blastzone_left - 20 || y > blastzone_bottom + 50){
  if (get_stage_data(SD_ID) != 0) {
    if !((player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND)
    && (player_id.attack == AT_DSPECIAL_2)) {
        player_id.move_cooldown[AT_NSPECIAL] = 60;
        player_id.move_cooldown[AT_DSPECIAL] = 60;
        destroy_self = true;
    }
    if !free {destroy_self = true;}
  }
}

// Destroy the chair if the destruction flag is raised.
// Keep this at the end to avoid errors.
if (destroy_self) {
  if (instance_exists(hitboxlock)){ instance_destroy(hitboxlock); }
  if spawn_death_effect {
    var effect = spawn_hit_fx(x, y, chair_death_effect);
    effect.depth = depth; effect.spr_dir = spr_dir;
  }
  instance_destroy();
}

// DEFINITIONS ONLY PAST THIS POINT

#define try_landing
if can_land && vsp >= 0 {
  can_land = false; recently_hit = false;
  if vsp > -100 { pre_draw_index = 15; window_timer = 0; }
  sound_play(asset_get("sfx_land_light"));
}

#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default:
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump":
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

//La Reina update.gml

/* if spawnChair {
  myChair = instance_create( x+32*spr_dir, y-10, "obj_article1");
  spawnChair = false;
} */

fair_sweetspot_volume = max(0.01, fair_sweetspot_volume-0.07);
sound_volume( fair_sweetspot_sfx, fair_sweetspot_volume, 1 );

with (hit_fx_obj) if player == other.player {
  if (hit_fx == other.hitfx_magnet_outward
  ||  hit_fx == other.hitfx_magnet_outward_big
  ||  hit_fx == other.hitfx_magnet_outward_clap) {depth = depth - 10;}
  else if  hit_fx == 304 && other.attack == AT_USPECIAL {depth = other.depth + 10;}
}

// take care of afterimage stuff

if add_afterimages_timer > 0 {
  if add_afterimages_timer % 3 == 0 && !hitpause {
    array_push(uspecial_last_positions, [sprite_index,image_index,x, y,spr_dir,uspecial_afterimage_timer, afterimage_colour]);
    if activate_multicolour {
        multicolour_after_index = (multicolour_after_index + 1) % 3
        afterimage_colour = multicolour_colours[multicolour_after_index]
    }
  }
  add_afterimages_timer -= 1;
}

var ulp = uspecial_last_positions;
var afterimage_number = array_length(ulp);
if afterimage_number > 0 {
  var s_image = ulp[afterimage_number-1]
  var opacity = max(0, min(0.5, 2 - (uspecial_afterimage_timer-s_image[5])/10))
  uspecial_afterimage_timer += 1;
  if opacity <= 0 {
    uspecial_last_positions = []; uspecial_afterimage_timer = 0;
  }
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {

  if (state == PS_ATTACK_GROUND) { // Ground attacks
    // Taunt
    if (attack == AT_TAUNT){
      if (window == 1) {
        if selected_taunt == noone {
          selected_taunt = 1;
        } else {
          user_event(0); // populate available_taunts
        }
        window = (selected_taunt*2)+1;
        window_timer = 0;
      }
    }
  } else { // Air attacks

    // spawn the LOYAL FANS
    if (vsp > 0 && y > ringout_y) && (ring_summon_count <= 3)
    && (get_stage_data(SD_ID) != 0) // don't spawn on button check stage
    && (instance_exists(grab_victim) && (can_summon_ring)
    && (attack == AT_UAIR   || attack == AT_USPECIAL || attack == AT_FSTRONG
    ||  attack == AT_FTHROW || attack == AT_NTHROW)) {
      hsp = 0;
      ring_object = instance_create( x-92, y+30+ring_height_decay, "obj_article_solid" );
      if ring_summon_count == 0 { // Summon the loyal fans
        ring_object.is_fans = true;
        ring_object.sprite_index = ring_object.fans_sprite_index;
        ring_object.mask_index = ring_object.fans_mask_index;
        sound_play(loyal_fans_sfx);
        sound_play(sound_get("pixabay_utilt_cheer"));
      } else { // Summon the trusty table
        ring_height_decay += ring_height_decay_rate + 5*ring_summon_count;
        ring_object.is_fans = false;
        ring_object.sprite_index = ring_object.table_sprite_index;
        ring_object.mask_index = ring_object.table_mask_index;
        sound_play(sound_get("pixabay_utilt_cheer"));
        /* sound_play(sound_get("crowd_gasp")); */
        ring_object.can_crumble = false;
        ring_object.spr_dir = spr_dir;
        if spr_dir {
          sprite_change_offset("loyaltable", 0, 0);
          sprite_change_offset("loyaltable_cracked", 0, 0);
        } else {
          sprite_change_offset("loyaltable", ring_object.platform_width, 0);
          sprite_change_offset("loyaltable_cracked", ring_object.platform_width, 0);
        }
      }
      can_summon_ring = false;
      ring_summon_count += 1; reset_fans = 3;
    }

  }
  } else {

    // stop looping sounds
    sound_stop(fstrong_falling_sound);

    if (instance_exists(grab_victim)){ // Release grab victims if interrupted
      grab_victim.wrap_time = 0;
      grab_victim.gethit_grabbed = noone;
      grab_victim = noone;
    }
  }

  //Reset the LOYAL FANS if La Reina lands on something other than her ring

if (!free){
  reset_fans = max(0, reset_fans-1);
  if (instance_exists(ring_object)) {
    // Check if player is on the platform
    if ((x+hsp+1 >=  ring_object.x - half_width)
    &&  (x+hsp-1 < ring_object.x + ring_object.platform_width + half_width)
    &&  (y+vsp >  ring_object.y - 2)
    &&  (y+vsp <  ring_object.y + 2) ) {
      reset_fans = 3;
      if !ring_object.is_fans {
        if !ring_object.can_crumble {sound_play(loyal_table_sfx);}
        ring_object.can_crumble = true;
        ring_object.sprite_index = ring_object.table_cracked_sprite_index;
      }
    }
  }
} else {
  if instance_exists(ring_object) && !ring_object.is_fans && (!hitpause) && ring_object.can_crumble {
    var left_fx = spawn_hit_fx( x-ring_object.platform_width/4, y+12, ring_object.table_fx_left);
    left_fx.hsp = -4; left_fx.vsp = -6;
    left_fx.grav = 0.6;

    var right_fx = spawn_hit_fx( x+ring_object.platform_width/4, y+12, ring_object.table_fx_right);
    right_fx.hsp = 4; right_fx.vsp = -6;
    right_fx.grav = 0.6;
    spawn_hit_fx( x, y, 304);

    if !ring_object.spr_dir {
      left_fx.hsp *= -1; left_fx.x += ring_object.platform_width/2;
      right_fx.hsp *= -1; right_fx.x -= ring_object.platform_width/2;
    }

    ring_object.sprite_index = ring_object.table_empty_sprite_index;
    ring_object.destroy_self = true;
  }

  if air_chair_died {
    move_cooldown[AT_NSPECIAL] = max(2, move_cooldown[AT_NSPECIAL]);
    move_cooldown[AT_DSPECIAL] = max(2, move_cooldown[AT_DSPECIAL]);
  }
}
if reset_fans <= 0 { ring_summon_count = 0; ring_height_decay = 0; }
if (!free && ring_summon_count = 0) {can_create_air_chair = true; air_chair_died = false;}

secret_nspecial_cooldown = max(0, secret_nspecial_cooldown - 1);
move_cooldown[AT_NSPECIAL] = max(secret_nspecial_cooldown, move_cooldown[AT_NSPECIAL]);

//Rolling Girl once per airtime
if (instance_exists(myChair)){
  if (free && has_rolling_girl){
    move_cooldown[AT_DSPECIAL] = max(move_cooldown[AT_DSPECIAL], 2);
  }
  else if (!free){
    move_cooldown[AT_DSPECIAL] = 0;
    has_rolling_girl = false;
  }
}
else{
  var dspecial_target_cooldown = move_cooldown[AT_DSPECIAL];
  if !free {dspecial_target_cooldown = 0;}
  //move_cooldown[AT_DSPECIAL] = max(dspecial_target_cooldown, move_cooldown[AT_NSPECIAL]);
  has_rolling_girl = false;
}
//print(air_chair_died)

// indicate that the chair is available to create again
if chair_cooldown_by_destruction and move_cooldown[AT_NSPECIAL] == 0 {
  sound_play(asset_get("sfx_tow_anchor_land"), false, noone, 0.75);
  create_chair_flash_opacity = 1;
  chair_cooldown_by_destruction = false;
}

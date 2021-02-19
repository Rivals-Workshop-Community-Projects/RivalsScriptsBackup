// -----------------------------------------------------------------------------
// Astral Card
// -----------------------------------------------------------------------------
if (CARD_TYPE == 3 && card_state == 1){
  card_timer++;

  // Slow down animation due to speed
  image_angle += (abs(hsp)+abs(vsp))/2 * 4 * -spr_dir;

  // Custom Friction
  if (hsp != 0) hsp *= 0.8;
  if (vsp != 0) vsp *= 0.8;

  // Stop Code
  if (!free || hit_wall){
    hsp = 0;
    vsp = 0;
  }

  // Reset on
  if (card_timer > CARD_LIFETIME){
    card_reset();
  }
}


// -----------------------------------------------------------------------------
// Sun / Star / Galaxy Trap Cards
// -----------------------------------------------------------------------------
else {

  // If we're in the physical states
  if (card_state > 0 && card_state < 5){

    // If I can't move, I'm grounded
    can_be_grounded = (vsp > -1 && free == false);

    // Only add gravity if in air
    grav = .5;

    // Speed limit while adding gravity
    vsp += grav * free && (abs(vsp) < CARD_SPEED);

    // Trigger return if fallen too far
    if (y > 1000){
      card_state = 5;
      ignores_walls = true;
      can_be_grounded = false;
      sprite_index = CARD_SPRITE_SMALL;
      image_index = CARD_TYPE;
    }

  }

  // Platform fix
  if (!free){
    col_jumpthrough = instance_place(x,y+1,asset_get("par_jumpthrough"));
  }

  switch(card_state){

    // On Air
    case 1:
      if (!free || hit_wall){
        y -= 2;
        var ycheck = sprite_height/2;
        // Card Saver
        if (!position_meeting(x+16,y+ycheck,asset_get("par_jumpthrough"))) x -= 16;
        if (!position_meeting(x-16,y+ycheck,asset_get("par_jumpthrough"))) x += 16;
        if (!position_meeting(x+16,y+ycheck,asset_get("par_block"))) x -= 16;
        if (!position_meeting(x-16,y+ycheck,asset_get("par_block"))) x += 16;

        // Then change to Set
        hsp = 0;
        vsp = 0;
        card_state = 2;
        sprite_index = CARD_SPRITE_SET;
        while(position_meeting(x,y+1,asset_get("par_block"))) y-= 1;
        sound_stop(sound_get("sfx_aster_card_set"));
        sound_play(sound_get("sfx_aster_card_set"));
      }
    break;

    // Set
    case 2:
      // Revert state and move when hit
      var hitbox_check = instance_place(x, y, pHitBox);
      if (hitbox_check != noone){

        // Check if it's not from your own cards & specials
        // Check if it's not from any of Astra's USpecial and Nebula FSpecial
        if !(hitbox_check.orig_player == player &&
            (hitbox_check.attack == AT_DSPECIAL || (hitbox_check.attack > 39 && hitbox_check.attack < 42) )) &&
           !(hitbox_check.player_id.url == player_id.url && (hitbox_check.attack == 42 || hitbox_check.attack == AT_USPECIAL)) {

          // Only check when we actually have an object & prevent non-existent checks
          if (hitbox_check.damage > 0){

            y -= 2;
            card_state = 1;
            sprite_index = CARD_SPRITE_SMALL;
            sound_play( sound_get("sfx_aster_card_pickup") );
            sound_play( asset_get("sfx_icehit_weak1"), false, noone, 0.5 );

            var kb_angle = get_hitbox_angle(hitbox_check);
            var kb_distance = hitbox_check.kb_value + hitbox_check.damage *
              hitbox_check.kb_scale;

            kb_distance *= 0.9;

            // HSP multipled by spr_dir
            hsp = lengthdir_x( kb_distance, kb_angle );

            // VSP is negative absolute value only and limited to -5
            vsp = min( -5, -abs( lengthdir_y(kb_distance, kb_angle) ) );

          }
        }
      }

    break;

    // Active
    case 3:
      // Set to disabled graphic
      if (card_timer == 0) image_index += 3;

      // If activated in Clairen's NO FUN ZONE
      if (place_meeting(x, y, asset_get("plasma_field_obj"))){
        card_state = 4;
        break;
      }

      switch(CARD_TYPE){
        // Sun Card
        case 0:
          if (card_timer == 15){
            sound_play(asset_get("sfx_zetter_fireball_fire"));
            spawn_hit_fx(x,y-32,142);
            create_hitbox(AT_DSPECIAL,1,x,y-32);
            card_state = 4;
          }
        break;

        // Star Card
        case 1:
          if (card_timer % 10 == 0){
            sound_play(asset_get("sfx_ice_burst_up"));
            create_hitbox(AT_DSPECIAL,2,x-24+48*(card_timer/10 % 2 == 0),y-16-24*card_timer/10);
            spawn_hit_fx(x-24+48*(card_timer/10 % 2 == 0),y-16-32*card_timer/10,111);
          }
          if (card_timer == 30){
            card_state = 4;
          }
        break;

        // Galaxy Card
        case 2:
          if (card_timer == 1){
            sound_play(asset_get("sfx_forsburn_consume"));
            create_hitbox(AT_DSPECIAL,3,x,y-32);
            spawn_hit_fx(x,y-32,player_id.galaxy_absorb);
          }
          if (card_timer == 80){
            card_state = 4;
          }
          if (card_trapid != noone){
            with (card_trapid){

              if (hitpause && hitstun > 0) {
                other.card_state = 4;
                sound_play(asset_get("sfx_ori_glide_end"));
                break;
              }

              set_state(PS_WRAPPED);
              if (other.card_timer < 31){
                x = ease_cubeInOut( other.card_trapx, other.x+bubble_x, other.card_timer, 30);
                y = ease_cubeInOut( other.card_trapy, other.y-10+bubble_y, other.card_timer, 30);
              } else {
                x = other.x+bubble_x;
                y = other.y-10+bubble_y;
              }

            }
          }
        break;
      }
      card_timer++;
    break;

    // Inactive
    case 4:
      if (place_meeting(x,y,player_id)){
        sound_play(sound_get("sfx_aster_card_pickup"));
        card_reset();
      }
    break;

    // Returning
    case 5:
      var a = point_direction(x, y+32, player_id.x, player_id.y);
      hsp = lengthdir_x(10,a);
      vsp = lengthdir_y(10,a);
      image_angle = a+90;
      if (place_meeting(x,y,player_id)){
        sound_play(sound_get("sfx_aster_card_pickup"));
        card_reset();
      }
    break;
  }
}


#define card_reset()
  x = CARD_STARTX;
  y = CARD_STARTY;
  hsp = 0;
  vsp = 0;
  card_timer = 0;
  sprite_index = CARD_SPRITE_SMALL;
  image_index = CARD_TYPE;
  image_angle = 0;
  card_state = 0;
  card_count = 0;
  card_trapid = noone;
  ignores_walls = false;
  can_be_grounded = false;
  return true;

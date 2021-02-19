switch(my_hitboxID.attack){

  case AT_BAIR:
    if (my_hitboxID.hbox_num == 2){
      window = 4;
      window_timer = 0;
    }
  break;

  case 40: //AT_FSPECIAL_SUN
    hit_player_obj.hitstop *= 2;
  break;

  case 42: //AT_FSPECIAL_GALAXY
    if (hit_player_obj.hitstun > 0){
      sound_play(asset_get("sfx_ori_glide_start"));
      spawn_hit_fx(my_hitboxID.x, my_hitboxID.y,66);
      hit_player_obj.hitpause = false;
      blackhole_obj = instance_create(my_hitboxID.x, my_hitboxID.y, "obj_article2");
      blackhole_obj.trap_playerid = hit_player_obj;
      blackhole_obj.facing = sign(my_hitboxID.hsp);
    }
  break;

  case AT_DSPECIAL:

    if (my_hitboxID.hbox_num == 3 && hit_player_obj.hitstun > 0){
      hit_player_obj.hitpause = false;
      if (blackhole_obj != noone){
        instance_destroy(blackhole_obj);
        blackhole_obj = noone;
      }
      with(CARD_OBJ[2]){
        card_trapid = other.hit_player_obj;
        card_trapx = other.hit_player_obj.x;
        card_trapy = other.hit_player_obj.y;
      }
    }
    
  break;

}

//Put anything in the curseattacks array.
//This only works if you disregard hitbox number
var curseattacks = [AT_NSPECIAL, AT_FSPECIAL, AT_USPECIAL, AT_DTHROW];
if (array_find_index(curseattacks, my_hitboxID.attack) != -1 and !hit_player_obj.clone and my_hitboxID.hbox_num != 2)
{
  hit_player_obj.visual_timer[0] = hit_player_obj.player_curse == noone ? 0 : hit_player_obj.visual_timer[0];
  hit_player_obj.player_curse = self;
}

switch(my_hitboxID.attack){
    case AT_JAB:
        if my_hitboxID.hbox_num == 1 {
        sound_play(sound_get("qoedil_hit_bite"),false,noone,0.6);
        }
    break;
    case AT_DATTACK:
        if my_hitboxID.hbox_num == 1 {
        sound_play(sound_get("qoedil_hit_bite"),false,noone,0.8);
        }
    break;
    case AT_UTILT:
        if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(sound_get("qoedil_hit_bite"),false,noone,0.8,0.9);
     }
    break;
    case AT_DTILT:
        if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) {
        sound_play(sound_get("qoedil_hit_bite"),false,noone,0.5, 1.2);
        }
        if (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4) {
        sound_play(sound_get("qoedil_hit_bite"),false,noone,0.5, 1.1);
        }
        if (my_hitboxID.hbox_num == 5 || my_hitboxID.hbox_num == 6) {
        sound_play(sound_get("qoedil_hit_bite"),false,noone,0.6);
        }
    break;
    case AT_NAIR:
        if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) {
        sound_play(sound_get("qoedil_hit_bite"),false,noone,0.5, 1.2);
        }
        if (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4) {
        sound_play(sound_get("qoedil_hit_bite"),false,noone,0.6);
        }
    break;
    case AT_UAIR:
    case AT_DAIR:
        if my_hitboxID.hbox_num == 1 {
        sound_play(sound_get("qoedil_hit_bite"),false,noone,0.6);
        }
        if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(sound_get("qoedil_hit_bite"),false,noone,0.8,0.9);
     }
    break;
    case AT_BAIR:
    if (my_hitboxID.hbox_num == 2){
      window = 4;
      window_timer = 0;
    }
    break;
    case AT_FSPECIAL:
        if my_hitboxID.hbox_num == 1 {
         sound_play(sound_get("hit1"),false,noone,0.7);
     }
    break;
    case AT_USPECIAL:
        if my_hitboxID.hbox_num == 1 {
         sound_play(sound_get("qoedil_hit_bite"),false,noone,0.8);
     }
    break;
    case AT_DSPECIAL:
    if (my_hitboxID.hbox_num == 1){
      destroy_hitboxes();
      window = 3;
      window_timer = 0;
    }
    break;
    case AT_DSPECIAL_AIR:
    if (my_hitboxID.hbox_num == 1){
      destroy_hitboxes();
      window = 4;
      window_timer = 0;
    }
    break;
    case AT_DTHROW:
        if my_hitboxID.hbox_num == 1 {
         sound_play(sound_get("hit1"),false,noone,0.7);
     }
    break;
}

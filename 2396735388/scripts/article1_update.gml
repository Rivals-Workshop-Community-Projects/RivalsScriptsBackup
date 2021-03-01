//article1_update

switch article_which {
    case 1: //gcm particle
        vsp /= 1.1;
        livetimer++;
        if livetimer >= 30 {
            image_alpha = (60 - livetimer) / 30;
            if livetimer >= 60 {
                instance_destroy();
            }
        }
    break;
    case 2: //fake ring hitbox
        with oPlayer {
            if id != other.player_id {
                if state_cat == SC_HITSTUN && state != PS_TUMBLE && !grabbed_by_zeph_ring {
                    if place_meeting(x, y, other) {
                        grabbed_by_zeph_ring = true;
                        grabbed_by_zeph_ring_id = other.assoc_ring;
                        other.assoc_ring.state = 3;
                        other.assoc_ring.state_timer = 0;
                        sound_play(asset_get("sfx_ori_ustrong_charge"));
                        spawn_hit_fx(x, y-24, 301);
                    }
                } else if state == PS_PARRY && window == 1 {
                    with other {
                        create_hitbox(AT_EXTRA_3, 1, x, y);
                    }
                }
            }
        }
        instance_destroy();
    default:
    break;
}
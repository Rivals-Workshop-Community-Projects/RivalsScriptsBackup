//article1_update
timer++
state_timer++

if die && state != PS_DEAD {
    set_state(PS_DEAD)
}
switch state {
    case PS_SPAWN:
    sprite_index = sprite_get("barb_spawn")
    image_index = floor(state_timer/5)
    if image_index == 4 {
        set_state(PS_IDLE)
    }
    if state_timer == 1 {
        sound_play(asset_get("sfx_may_wrap2"))
        sound_play(sound_get("garden_zombie_prepare"))
    }
    break;
    
    case PS_IDLE:
    sprite_index = sprite_get("barb_spawn")
    image_index = 4
    
    var hbox = undefined
    with pHitBox if type == 1 && instance_place(x, y, other) {
        hbox = id;
    }
    
    if hbox != undefined {
        /*
        var spd = 4
        hsp = spd*hbox.spr_dir*sign(dcos(hbox.kb_angle))
        vsp = -spd*0.5*sign(dsin(hbox.kb_angle))
        set_state(PS_ATTACK_AIR)
        */
        
        //uncomment to allow barbs to be destroyed by enemies
        /*
        if hbox.player_id != player_id {
            set_state(PS_DEAD)
        }
        */
    }
    
    var barbID = id
    var haveHitbox = false
    var hit_self = false
    with oPlayer if state == PS_HITSTUN && !hitpause {
        with hurtboxID if place_meeting(x, y, barbID) {
            haveHitbox = true
        }
        if haveHitbox && id == other.player_id {
            hit_self = true
        }
    }
    //print(hit_self)
    if haveHitbox && timer mod 2 == 0 && state_timer > 6 {
        var hbox = create_hitbox(AT_NSPECIAL, 2, x, y)
        if hit_self {
            for (var i = 0; i < array_length(hbox.can_hit) i++) {
                if i != player_id.player {
                    hbox.can_hit[i] = false
                }
            }
            hbox.can_hit_self = true
        }
    }
    //hitbox interactions
    with pHitBox if ("is_hornet" in player_id) && player_id.is_hornet == true {
        if instance_place(x, y, other) {
            switch attack {
                case AT_DAIR:
                case AT_DATTACK:
                if !player_id.has_hit {
                    player_id.has_hit = true
                    player_id.hitpause = true
                    player_id.hitstop = 4
                    with other {
                        if other.attack == AT_DAIR sound_play(asset_get("sfx_blow_medium1"))
                        if other.attack == AT_DATTACK sound_play(asset_get("sfx_blow_medium2"))
                        spawn_hit_fx(x, y, 14)
                        set_state(PS_DEAD)
                    }
                }
                break;
                
                case AT_USPECIAL:
                if hbox_num == 1 {
                    other.needle_ID = id
                    if !manual_hit {
                        manual_hit = true
                        sound_play(asset_get("sfx_shovel_hit_med2"))
                        with other spawn_hit_fx(x, y, 14)
                    }
                } else if hbox_num == 2 && !(other.needle_ID != noone && other.needle_ID.has_hit_player == true) {
                    player_id.manual_hit = true
                    player_id.has_hit = true
                    with other set_state(PS_DEAD)
                }
                break;
            }
        }
    }
    
    break;
    
    case PS_ATTACK_AIR:
    image_angle -= 20*spr_dir
    if state_timer == 10 {
        die = true
    }
    break;
    
    case PS_DEAD:
    hsp = 0
    vsp = 0
    if state_timer == 1 {
        sound_play(sound_get("spikes_break"))
    }
    sprite_index = sprite_get("barb_break")
    image_index = clamp(floor(state_timer/4), 0, 2)
    if state_timer == 12 {
        instance_destroy()
    }
    break;
}

#define set_state(newstate)
state = newstate
state_timer = 0

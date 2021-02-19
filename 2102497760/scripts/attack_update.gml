//B - Reversals
if (attack == AT_DSPECIAL || attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR || attack == AT_DSPECIAL_AIR){ //no B-reversing Uspecial or Dspecial, since they require a quick backward input to aim
    trigger_b_reverse();
}

if was_parried && attack == AT_JAB && state == 6 {
    was_parried = false;
    canBeStunned = false;
    can_be_parried = false;
    jab_parried = 1;
    
}
/*if window == 1 && window_timer == 1 {
    if attack == AT_NSPECIAL set_state(PS_IDLE);
    if (attack == AT_USPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL) && !(special_down && attack_down) {
        set_state(PS_IDLE);
    }
}*/

if (attack == AT_FSPECIAL) {
    mounted = 0;
    if (window == 2 && window_timer == 1 && is_ou) {
        with Ou {
            if point_distance(other.x,other.y,x,y) <= range+32 {
                sound_play(other.chuck_sound);
                free = 1;
                vsp = other.chuckVsp;
                hsp = other.spr_dir*other.chuckHsp;
            } else {
                sound_play(other.recall_sound);
                ou_state = PS_ROLL_FORWARD; //Recal state
            }
        }
    }
}
if (attack == AT_DSPECIAL && window == 1 && window_timer == 1) {
    dspec_cooldown = 40;
    if is_ou && point_distance(Ou.x,Ou.y,x,y) < mount_range {
        mounted = !mounted;
        dspec_cooldown  = 30;
    } else sound_play(djump_sound);
}

if (attack == AT_USPECIAL) {
    can_wall_jump = true;
    if (window == 1) {
        uspec_cooldown = 999;
        if window_timer == 5 vsp = -uspec_vsp;
        if !mounted && is_ou {
            reset_window_value(AT_USPECIAL,1,AG_WINDOW_LENGTH);
            uspec_angle = point_direction(x,y,Ou.x,Ou.y);
            vsp += .05*-uspec_speed*dsin(uspec_angle);
            hsp += .05*uspec_speed*dcos(uspec_angle);
            
        } else if (mounted && is_ou) {
            set_window_value(AT_USPECIAL,1,AG_WINDOW_LENGTH,32);
            mounted = 0;
            Ou.vsp = -20;
        }
    }
    if (window == 2) {
        if state_timer > 60 set_state(PS_IDLE_AIR);
        if is_ou {
            Ou.vsp = 0;
            Ou.hsp = 0;
            uspec_angle = point_direction(x,y,Ou.x,Ou.y);
            vsp = -uspec_speed*dsin(uspec_angle);
            hsp = uspec_speed*dcos(uspec_angle);
            if point_distance(x,y,Ou.x,Ou.y) < 10 {
                window_timer = 0;
                window = 3;
                spr_angle = 0;
            }
        } else window = 3;
    }
    if window == 3 && window_timer == 1 &&  is_ou {
        hsp = 0;
        vsp = 0;
        mounted = 1;
    }
}
if dair_hit == 1 && attack == AT_DAIR && window == 3 {
    dair_hit = 0;
    vsp = -7;
    window_timer = 0;
    window = 4;
}

if utilt_hit == 1 && attack == AT_UTILT {
    grabbed.x = lerp(grabbed.x,x+spr_dir*get_hitbox_value(AT_UTILT,1,HG_HITBOX_X),0.5);
    grabbed.y = lerp(grabbed.y,y+get_hitbox_value(AT_UTILT,1,HG_HITBOX_Y),0.5);
    if (right_down-left_down != 0 && spr_dir2 == 0) {
        spr_dir = right_down-left_down;
        spr_dir2 = 1;
    }
    if window == 3 && window_timer == 2 grabbed = noone;
    if window == 3 && window_timer == 1 {
        create_hitbox(AT_UTILT,2,x,y);
        utilt_hit = 0;
    }
}

if ftilt_hit == 1 && attack == AT_FTILT {
    grabbed.x = lerp(grabbed.x,x+spr_dir*get_hitbox_value(AT_FTILT,1,HG_HITBOX_X),0.5);
    grabbed.y = lerp(grabbed.y,y+get_hitbox_value(AT_FTILT,1,HG_HITBOX_Y)+32,0.5);
    if window == 3 && window_timer == 6 grabbed = noone;
    if window == 3 && window_timer == 5 {
        create_hitbox(AT_FTILT,3,x,y);
        ftilt_hit = 0;
    }
}
if attack == AT_FTILT && (ftilt_hit == 0) && window == 2 && window_timer == 5 {
    window_timer = 0;
    window = 4;
} 
if attack == AT_FTILT && window == 3 && window_timer == 28 spr_dir *= -1;

if attack == AT_TAUNT {
    //if state_timer == 1 sound_play(floot);
    if (window == 2 || window == 3) {
        mounted = 0;
        if state_timer > 20 && shield_down {
            if ((left_down && spr_dir == 1 ) || right_down && spr_dir == -1 ) set_state(PS_ROLL_BACKWARD);
            if ((left_down && spr_dir == -1 || right_down && spr_dir == 1 )) set_state(PS_ROLL_FORWARD);
            if (state == 5 || state == 6) set_state(PS_IDLE);
            sound_stop(floot);
        }
        if !is_ou && window == 2 && (window_timer == 1) window = 3;
        if window == 3 {
            if !playing_floot {
                sound_play(floot);
                playing_floot = true;
            }
            if get_gameplay_time() % 90 == 0 spawn_hit_fx(x,y,hfx_note);
            else if get_gameplay_time() % 45 == 0 spawn_hit_fx(x,y,hfx_note_quarter);
            if window_timer == 53 window_timer = 0;
            if state_timer > ou_respawn_time && !is_ou {
                Ou = instance_create(x,y,"obj_article1");
                Ou.player_id = id;
                Ou.aei_id = id;
                Ou.spr_dir = spr_dir;
                window = 2;
            }
        }
    }
}

if attack == AT_TAUNT && window == 2 && window_timer == 49 && taunt_down window_timer = 0;

/*if window == 1 && window_timer == 1 {
    var i = 1;
    for (i = 1; i < get_num_hitboxes(attack); i += 1) {
        //reset_hitbox_value(attack, i, HG_HITBOX_Y);
        var te = get_hitbox_value(attack, i, HG_HITBOX_Y);
        set_hitbox_value(attack, i, HG_HITBOX_Y, te+mounted_offset);
    }
}*/
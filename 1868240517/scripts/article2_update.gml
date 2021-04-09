//article2_update

if (init == 0) {
    init = 1;
    with (asset_get("obj_article2")) {
        if (id != other.id && player_id == other.player_id && state != 2) {
            state = 3;
            state_timer = 0;
            //sprite_index = sprite_get("fspecial_open");
        }
        
    }
    with player_id {
        other.player_color = get_player_color(player);
        other.player_code3 = code_3;
        other.player_code4 = code_4;
        other.spr_dir = spr_dir;
    }
    image_index = 0;
    
    /*if player_code3 || (player_color == 1 && player_code4) {
        spin_spr = sprite_get("fspecial_spin_desat");
        off_spr = sprite_get("fspecial_spin_off_desat");
        tele_spr = sprite_get("fspecial_tele_desat");
        open_spr = sprite_get("fspecial_spin_off_desat");
    }*/
    im_num = image_number;
    im_dex = image_index;
    if player_code3 || (player_color == 1 && player_code4) { 
        disk_spr = open_spr;
        //sprite_index = asset_get("empty_sprite");
        
    }
    if player_color == 3 {
        if player_code3  spin_spr = sprite_get("fspecial_spin_g_desat");
        else {
            spin_spr = sprite_get("fspecial_spin_g");
            off_spr = sprite_get("fspecial_spin_off");
            tele_spr = sprite_get("fspecial_tele");
            open_spr = sprite_get("fspecial_spin_off");
            expl_spr = sprite_get("fspecial_explode");
        }
    }
    //hit_op = 1;
}


fall_through = true;

if (state == 0) { //building
    state_timer++;
    //if state_timer == 1 hsp = 20*spr_dir;
    im_dex = im_num*(state_timer/build_time);
    image_index = im_dex;
    if (state_timer >= build_time) {
        state = 1;
        state_timer = 0;
        stay_timer = 0;
        full_timer = 0;
        sprite_index = spin_spr;
        im_num = sprite_get_number(spin_spr);
    }
}

var stay_time = 500;
var hitlock = 10;
if (state == 1) {
    dist = distance_to_object(player_id);
    with hBox {
        x = other.x+1+other.hsp;
        y = other.y+2+other.vsp;
    }
    if (player_id.state == 5 || player_id.state == 6) && player_id.attack == AT_USPECIAL && player_id.uspecial_done == 0 {
        spr_dir = player_id.spr_dir;
        im_dex = (player_id.window_timer/upb_startup)*im_num;
        hit_op = 0;
        
    } else {
        if sign(-cos(direc)) != 0 spr_dir = sign(-cos(direc));
        if (round(stay_timer/5) == stay_timer/5) {
            im_dex = (im_dex+1) % im_num; 
            }
    }
    image_index = im_dex;
    stay_timer++;
    hit_accel = 0;
    with (asset_get("oPlayer")) {
        /*if (id != other.player_id && (state == 5 || state == 6) && other.far_hit > distance_to_object(other)) { //Opponent attacking ground or air
            other.hit_op = 0;
        }*/
        if (id != other.player_id &&  other.near_hit > distance_to_object(other)) {
            other.hit_accel = 1;
        }
        if (id == other.player_id && (state == PS_PRATLAND || state == PS_PRATFALL)) { //If R-00 is in stun
            other.hit_op = 0;
        }
        /*
        if (id != other.player_id && other.hit_cd > 0 && distance_to_object(other) == 0) { //So it doesn't activate inside the opponent
            other.hit_cd = other.hit_cd_max;
        }
        if (id == other.player_id && (state != 5 && state != 6) && distance_to_object(other) == 0) {
            other.hit_cd = 2;
        }*/
    }
    //New Removal code :)
    if lockout > 0 {
        hit_op = 0;
        hit_accel = 0;
        lockout--;
    }
    //Movement Code
    direc = degtorad(point_direction(x,y,player_id.x,player_id.y-32));
    with (asset_get("pHitBox")){
        if type != 2 {
            // print_debug("HIT ORB WITH TYPE 1");
            if (other.lockout <= 0 && other.hit_cd2 <= 0 && !(attack == 16 && hbox_num == 2) && place_meeting(x,y,other.id)) {
                if other.last_hitbox != self && !player_id.has_hit_player {
                    sound_play(sound_effect);
                    spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
                    with player_id {
                        old_hsp = hsp;
                        old_vsp = vsp;
                        
                        if attack != AT_FSPECIAL has_hit = true;
                        hitstop = other.hitpause+other.damage*other.hitpause_growth*.05-2;
                        hitpause = true;
                    }
                }
                if player_id == other.player_id other.hit_op = 1;
                else {
                    if other.last_hitbox != self {
                        other.player_hit = player;
                        other.hit_damage = damage;
                    }
                    other.hit_op = 0;
                }
                if other.last_hitbox != self {
                    if (attack == 8 || attack == AT_FSPECIAL) { //DSTRONG, FSPECIAL
                        other.hsp = other.hitSpeed*spr_dir*kb_value*cos(degtorad(kb_angle));
                        other.vsp = - other.hitSpeed*kb_value*sin(degtorad(kb_angle));
                    } else {
                        if (kb_angle >= 90 && kb_angle < 270) {
                            other.hsp = other.hitSpeed*spr_dir*kb_value*cos(degtorad(kb_angle+ other.hitAngle))*(1-other.hit_accel*.5);
                            other.vsp = - other.hitSpeed*kb_value*sin(degtorad(kb_angle+ other.hitAngle))*(1-other.hit_accel*.5);
                        }
                        if (kb_angle < 90 || kb_angle >= 270) {
                            other.hsp =  other.hitSpeed*spr_dir*kb_value*cos(degtorad(kb_angle-other.hitAngle))*(1-other.hit_accel*.5);
                            other.vsp = - other.hitSpeed*kb_value*sin(degtorad(kb_angle- other.hitAngle))*(1-other.hit_accel*.5);
                        }
                    }
                }
                other.last_hitbox = self;
                other.hit_cd2 = other.hit_cd2_max;
            }
        }
            
        //}
        //if (attack != 16 && !place_meeting(x,y,other.id)) {
            //other.hit_box = 0;
        //}
    }
    /*if player_hit != player {
        with player_id {
            take_damage(player,other.player_hit,(floor(other.hit_damage/5)));
            sound_play(star_sound);
            spawn_hit_fx(x,y-40,star_vfx);
        }
        player_hit = player;
    }*/
    if hit_accel == 0 || hit_cd2 > 0 hit_jerk = hit_jerk_b;
    else hit_jerk = hit_jerk_m;
    hit_jerk_mod = 1;
    hsp = hsp*hit_jerk*(hit_jerk_mod) -(accel*((dist/10)^(1/6))*-cos(direc));
    vsp = vsp*hit_jerk*(hit_jerk_mod) -(accel*((dist/10)^(1/6))*sin(direc));
    if hit_cd2 > 0 hit_cd2--;
    if (hit_op == 0 && instance_exists(hBox)) instance_destroy(hBox);
    if (player_id.state == 5 || player_id.state == 6) && player_id.attack == AT_USPECIAL && player_id.window == 1 && player_id.uspecial_done == 0 {
        sprite_index = tele_spr;
    } else  {
        if (hit_op == 1 && hit_cd2 <= 0) {
            sprite_index = spin_spr;
            im_num = sprite_get_number(spin_spr);
            if last_hit_op != 1 {
                sound_play(active_sound);
                last_hit_op = 1;
            }
            if !instance_exists(hBox) && hbox_frames > 7 {
                hBox = create_hitbox(AT_FSPECIAL,2,x+1,y+2);
                hbox_frames = 0;
            } else hbox_frames++;
        }
        else {
            sprite_index = off_spr;
            if last_hit_op != 0 {
                //sound_play(inactive_sound);
                last_hit_op = 0;
            }
            im_num = sprite_get_number(off_spr);
        }
        if player_id.state == PS_DEAD {
            state = 2;
        }
    }
}


//Wall Bounce
if (hit_wall == true) {
    hsp = -hsp;
    
}

if (state == 2) { //Destroy
    im_dex = (build_time - full_timer)/build_time;
    image_index = im_dex;
    if instance_exists(hBox) instance_destroy(hBox);
    instance_destroy();
    exit;
    if (full_timer == build_time) {
        sound_play(asset_get("sfx_may_arc_cointoss"));
        player_id.got_gun = 0;
        //player_id.flight = 0;
        //player_id.max_djumps = player_id.flight_max;
    }
    full_timer++;
}


if (state == 3) { //Alt Destroy
    im_dex = (build_time - full_timer)/build_time;
    image_index = im_dex;
    if (full_timer == build_time) {
        if instance_exists(hBox) instance_destroy(hBox);
        instance_destroy();
        exit;
    }
    full_timer++;
}

if (state == 4) { //Return
    im_dex = (build_time - full_timer)/build_time;
    image_index = im_dex;
    mask_index = -1;
    with hBox {
        x = other.x;
        y = other.y+2;
    }
    with (asset_get("pHitBox")){
        if (other.hit_cd2 <= 0 && !(attack == 16 && hbox_num == 2) && place_meeting(x,y,other.id)) {
            other.state = 1;
            //Put As Rune
            /*if other.last_hitbox != self && !player_id.has_hit_player {
                sound_play(sound_effect);
                spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
                with player_id {
                    old_hsp = hsp;
                    old_vsp = vsp;
                    
                    if attack != AT_FSPECIAL has_hit = true;
                    hitstop = other.hitpause+other.damage*other.hitpause_growth*.05-2;
                    hitpause = true;
                }
            }
            if player_id == other.player_id other.hit_op = 1;
            else {
                if other.last_hitbox != self {
                    other.player_hit = player;
                    other.hit_damage = damage;
                }
                other.hit_op = 0;
            }
            if other.last_hitbox != self {
                if (attack == 8 || attack == AT_FSPECIAL) { //DSTRONG, FSPECIAL
                    other.hsp = other.hitSpeed*spr_dir*kb_value*cos(degtorad(kb_angle));
                    other.vsp = - other.hitSpeed*kb_value*sin(degtorad(kb_angle));
                } else {
                    if (kb_angle >= 90 && kb_angle < 270) {
                        other.hsp = other.hitSpeed*spr_dir*kb_value*cos(degtorad(kb_angle+ other.hitAngle))*(1-other.hit_accel*.5);
                        other.vsp = - other.hitSpeed*kb_value*sin(degtorad(kb_angle+ other.hitAngle))*(1-other.hit_accel*.5);
                    }
                    if (kb_angle < 90 || kb_angle >= 270) {
                        other.hsp =  other.hitSpeed*spr_dir*kb_value*cos(degtorad(kb_angle-other.hitAngle))*(1-other.hit_accel*.5);
                        other.vsp = - other.hitSpeed*kb_value*sin(degtorad(kb_angle- other.hitAngle))*(1-other.hit_accel*.5);
                    }
                }
            }
            other.last_hitbox = self;
            other.hit_cd2 = other.hit_cd2_max;*/
        }
            
    }
    //hit_op = 1;
    direc = degtorad(point_direction(x,y,player_id.x,player_id.y-32));
    hit_jerk = 7/8;
    hsp = 1.1*hsp*hit_jerk*(hit_jerk_mod)-(accel*(accel_mod)*-cos(direc));
    vsp = 1.1*vsp*hit_jerk*(hit_jerk_mod)-(accel*(accel_mod)*sin(direc));
    if hit_cd2 > 0 hit_cd2--;
    if (hit_op == 0 && instance_exists(hBox)) instance_destroy(hBox);
    if (player_id.state == 5 || player_id.state == 6) && player_id.attack == AT_USPECIAL && player_id.window == 1 && player_id.uspecial_done == 0 {
        sprite_index = tele_spr;
    } else  {
        if (hit_op == 1) {
            sprite_index = spin_spr;
            im_num = sprite_get_number(spin_spr);
            if last_hit_op != 1 {
                sound_play(active_sound);
                last_hit_op = 1;
            }
            if !instance_exists(hBox) && hbox_frames > 7 {
                hBox = create_hitbox(AT_FSPECIAL,2,x+1,y+2);
                hbox_frames = 0;
            } else hbox_frames++;
        }
        else {
            sprite_index = off_spr;
            if last_hit_op != 0 {
                //sound_play(inactive_sound);
                last_hit_op = 0;
            }
            im_num = sprite_get_number(off_spr);
        }
        if player_id.state == PS_DEAD {
            state = 2;
        }
    }
    if (instance_place(x,y,asset_get("oPlayer")) == player_id && player_id.state != 5 && player_id.state != 6) {
        with player_id {
            if flight != 0 flight--;
            else got_gun = 0;
            sound_play(asset_get("sfx_may_arc_cointoss"));
        }
        if instance_exists(hBox) instance_destroy(hBox);
        instance_destroy();
        exit;
    }
    full_timer++;
}

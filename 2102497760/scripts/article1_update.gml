//article1_update
if (init == 0){
    init = 1;
    to_dir = spr_dir;
    aei_id = player_id;
    with (asset_get("obj_article1")){
        if (id != other.id && player_id == other.player_id && state < 2){
            state = 2;
            state_timer = 0;
        }
    }
}

if !mounted {
    sprite_index = ou_sprite_index;
    image_index = ou_image_index;
    ou_image_number = image_number;
    //mask_index = asset_get("ex_guy_crouch_box");
} else {
    sprite_index = asset_get("empty_sprite");
    //mask_index = asset_get("empty_sprite");
    ou_image_number = sprite_get_number(ou_sprite_index);
}
if (state == 0) { //Dismount Anim
    image_index = (state_timer/full_time)*ou_image_number;
    state_timer++;
    if image_index == ou_image_number {
        state = 1;
        state_timer = 0;
    }
}
if (state == 2) { //Mount Anim
    state_timer++;
    instance_destroy();
    exit;
}
script_execute(phys_scr);
x_dist = (aei_id.x+aei_id.spr_dir*10)-x;
y_dist = aei_id.y-y;
if control == 0 {
    control_timer = 0;
    attack_fresh = 0;
}
control = 0;
if (state == 1) { //Normal Functions
    script_execute(var_edit_scr);
    if aei_id.state != PS_SPAWN script_execute(get_inputs_scr);
    if disp_state != 5 &&  disp_state != 6 && hitpause <= 0 {
        with aei_id {
            //if ((((state == 5 || state == 6) && (special_down || strong_down))) && other.y < other.stage_y) other.control = 1; //&& point_distance(0,0,other.x_dist,other.y_dist) < other.range) && other.y < other.stage_y+other.range other.control = 1;
            if ((special_down || strong_down || ((down_stick_pressed || up_stick_pressed || left_stick_pressed || right_stick_pressed))) && !attack_down && other.y < other.stage_y) other.control = 1;
        }
        if !mounted {
            script_execute(move_scr);
            
        }
        script_execute(input_scr);
        
        
    }
    state_timer++;
    
}
ou_state_timer++;
script_execute(anim_scr);
if control {
    control_timer++;
}

if mounted {
    x = player_id.x;
    y = player_id.y;
}

#define anim_scr // anim_scr(ou_state)
switch ou_state { //Extra State Scrunching
    case PS_DASH_START:
    case PS_DASH_TURN:
        ou_state = PS_WALK_TURN;
        break;
    case PS_DASH_START:
    case PS_DASH:
        ou_state = PS_WALK;
        break;
    /*case PS_CROUCH:
        ou_state = PS_IDLE;
        break;*/
}
if hitstun <= 0 {
    if disp_state != ou_state && ou_state < array_length_1d(anim_ar) {
        prev_state = disp_state;
        disp_state = ou_state;
        ou_state_timer = 0;
        //if ou_state == 5 || ou_state == 6 ou_sprite_index = _ag_sprite;
        if anim_ar[ou_state] != 0 ou_sprite_index = anim_ar[ou_state]; //Breaks if the animation isn't there
        
    }
} else if ou_state != PS_LANDING_LAG {
    disp_state = PS_HITSTUN;
    ou_sprite_index = sprite_get("ou_hurt");
}
committed = 0;
ou_state_timer++;
switch disp_state { //state specific events beyond visuals
    case 5:
        if !free ou_state = PS_LAND;
    case 6:
        script_execute(attack_scr,attack);
        break;
    case PS_AIR_DODGE:
        committed = 1;
        if !joy_pad_idle3 {
            hsp = dcos(joy_dir3)*air_dodge_speed;
            vsp = -dsin(joy_dir3)*air_dodge_speed;
        }
        if !free {
            ou_state = PS_WAVELAND;
            ou_state_timer = 0;
        }
        if ou_state_timer == 3 {
            invincible = 19;
            sound_play(air_dodge_sound);
        }
        if ou_state_timer > 24 { //Legnth 24 frames
            hsp = 0;
            vsp = 0;
            ou_state = PS_FIRST_JUMP;
        }
        break;
    case PS_ROLL_BACKWARD: //Both rolls
        committed = 1;
        if ou_state_timer > 3 && ou_state_timer < 27 {
            hsp = roll_dir*roll_backward_max;
        }
        if ou_state_timer == 3 {
            invincible = 24;
            sound_play(asset_get("sfx_roll"));
        }
        if ou_state_timer > 30 {
            ou_state = PS_IDLE;
        }
        break;
    case PS_ROLL_FORWARD: //Recal state
        committed = 1;
        recal_dir = point_direction(x,y,aei_id.x,aei_id.y);
        vsp = -recal_speed*dsin(recal_dir);
        hsp = recal_speed*dcos(recal_dir);
        if abs(x_dist) < range {
            ou_state = PS_IDLE;
            vsp = 0;
            hsp = 0;
        }
        break;
    case PS_JUMPSQUAT:
        committed = 1;
            if ou_state_timer == jump_start_time+4 {
                if !shield_down3 && shield_held == 0 {
                    if jump_down vsp = -jump_speed;
                    else vsp = -short_hop_speed;
                    ou_state = PS_FIRST_JUMP;
                    sound_play(jump_sound);
                } else {
                    ou_state = PS_WAVELAND;
                }
            }
            //if free {
                //ou_state = PS_FIRST_JUMP;
            //}
        /*if (ou_state_timer == 1 && !free) {
            ou_state = PS_LAND;
        }*/
        break;
    case PS_FIRST_JUMP:
        if !free ou_state = PS_LAND;
        if !free out_state = PS_WAVELAND;
        break;
    case PS_DOUBLE_JUMP:
        if ou_state_timer == 1 {
            djumps -= 1;
            vsp = 1;
            hsp += jump_change*right_down3-jump_change*left_down3;
            sound_play(djump_sound);
        }
        if ou_state_timer > 0 {
            vsp -= djump_speed*.13;
        }
        if !free ou_state = PS_LAND;
        if ou_state_timer > double_jump_time {
            ou_state = PS_FIRST_JUMP;
        }
        break;
    case PS_WALK_TURN:
        if ou_state_timer > walk_turn_time {
            ou_state = PS_WALK;
            spr_dir = to_dir;
        }
        //if down_down3 ou_state = PS_CROUCH;
        break;
    case PS_WALK:
        if spr_dir != to_dir ou_state = PS_WALK_TURN;
        //if free ou_state = PS_DOUBLE_JUMP;
        if abs(hsp) < walk_speed hsp += -walk_accel*left_down3 + walk_accel*right_down3;
        //if down_down3 ou_state = PS_CROUCH;
        break;
    case PS_LAND:
        if free ou_state = PS_FIRST_JUMP;
        if ou_state_timer > land_time {
            ou_state = PS_IDLE;
        }
        break;
    case PS_WAVELAND:
        committed = 1;
        if ou_state_timer <= 2 hsp = walk_speed*wave_land_adj*(2*right_down3-1);
        if ou_state_timer > wave_land_time {
            ou_state = PS_WALK;
        }
        break;
    case PS_IDLE:
        if !free hsp = 0;
        //if down_down3 ou_state = PS_CROUCH;
        break;
    case PS_HITSTUN:
        if hitpause > 0 {
            hitpause--;
            ou_state_timer = 0;
            vsp = 0;
            hsp = 0;
            free = 1;
        } else {
            if ou_state_timer == 2 {
                free = 1;
                vsp = -kb_power*dsin(kb_angle);
                hsp = kb_power*dcos(kb_angle);
            }
            hitstun--;
            if !free {
                ou_state = PS_LANDING_LAG;
            }
            if hitstun <= 0 {
                if free ou_state = PS_FIRST_JUMP;
            }
        }
        break;
    case PS_LANDING_LAG:
        if free ou_state = PS_FIRST_JUMP;
        if ou_state_timer > land_time {
            ou_state = PS_IDLE;
        }
        hitstun--;
        
        break;
}


//Various Animation things
switch disp_state {
    case 5:
    case 6:
        ou_image_index = _ag_window_anim_frame_start[window]+ floor(ease_linear(0,_ag_window_anim_frames[window],window_timer,floor(_ag_window_length[window]*(1+.5*_ag_window_wifflag[window]*(!has_hit_en)))));
        break;
    case PS_JUMPSQUAT:
        ou_image_index = ((ou_state_timer)/(2*jump_start_time))*ou_image_number;
        break;
    case PS_FIRST_JUMP:
        ou_image_index = ease_linear(0,ou_image_number,floor(vsp+jump_speed),jump_speed*2);
        break;
    case PS_CROUCH:
        ou_image_index = clamp(ou_state_timer/3,0,ou_image_number-1);
        if mounted aei_id.mounted_offset = clamp(-14*(1-ou_state_timer/(3*(ou_image_number-1))),-14,-8);
        break;
    default:
        ou_image_index = (state_timer*anim_speed)*ou_image_number;
        if mounted aei_id.mounted_offset = -14;
        break;
}
#define move_scr // AI movement behaviors
if ((up_strong_down3 || down_strong_down3 || right_strong_down3 || left_strong_down3)) {
    //if !(down_down || up_down || left_down || right_down) {
        down_down = down_strong_down;
        up_down = up_strong_down;
        left_down = left_strong_down;
        right_down = right_strong_down;
    //}
    strong_down = 1;
    //attack_down = 1;
    //control = 1;
}
if control == 0 && !attack_fresh {


    if (abs(x_dist) > range) {
        left_down3 = (-sign(x_dist)+1)/2;
        right_down3 = (sign(x_dist)+1)/2;
    }
    
    if ((x < stage_x) || (x > room_width-stage_x)) {
        right_down3 = (x < stage_x);
        left_down3 = (x > room_width-stage_x);
    }
    //if (-y_dist > range) jump_down3 = 1;
    //if (y_dist > (range)) jump_down3 = 0;
    
}
if (-y_dist > range*2 && !attack_fresh) || y > stage_y { 
    jump_down3 = 1;
    down_down3 = 0;
    djumps = max_djumps;
}
if (-y_dist > range*4 && !attack_fresh) {
    right_down3 = (abs(x-stage_x) < abs(x - room_width-stage_x));
    left_down3 = (abs(x-stage_x) > abs(x - room_width-stage_x));
}
#define phys_scr //phys_scr
//Collision Objects: jumpthrough_32_obj,solid_32_obj
//!free = (vsp >= 0 && ((place_meeting(x,y+1,asset_get("solid_32_obj")) || (!plat_drop && place_meeting(x,y+1,asset_get("jumpthrough_32_obj")))) && !(place_meeting(x,y-10,asset_get("solid_32_obj")) || (!plat_drop && place_meeting(x,y-10,asset_get("jumpthrough_32_obj"))))));
//if (!free) free = 0;
if free {
    vsp += (gravity_speed*(hitstun <= 0) + hitstun_grav*(hitstun > 0));//+up_down3*(gravity_speed/4);
    if hitstun <= 0 {
        vsp *= 1-air_friction;
        hsp *= 1-air_friction;
    }
    if abs(point_distance(0,0,hsp,vsp)) < air_max_speed {
        vsp += +air_accel*(up_down3)-air_accel*(down_down3);
        hsp += -air_accel*left_down3+air_accel*right_down3;
        }   
    if ou_state_timer > 7 && (disp_state == PS_IDLE || disp_state == PS_WALK) ou_state = PS_FIRST_JUMP; // fall fix
} else {
    vsp = 0;
    djumps = max_djumps;
    hsp *= 1-ground_friction/5;
    has_air_dodge = 1;
}

if invincible == 0 {
    last_hitbox = hit_id;
    hit_id = instance_place(x,y,pHitBox);
    if hit_id == noone has_hit = 0;
    if hit_lockout > 0 hit_lockout--;
    if hit_id != noone && hit_id.player_id != aei_id && hit_lockout == 0 && last_hitbox != hit_id && (hit_id.hbox_group == -1 || (hbox_group != hit_id.hbox_group)) {
        kb_angle = get_hitbox_angle(hit_id);
        with hit_id {
            if kb_value*4*((other.knockback_adj-1)*0.6+1)+other.percent*0.12*kb_scale*4*0.65*other.knockback_adj > other.hitstun {
                other.spr_dir = -spr_dir;
                other.percent += floor(damage);
                other.kb_power = kb_value+other.percent*0.12*kb_scale*other.knockback_adj;
                /*if kb_angle == 361 && other.free other.kb_angle = 45*3.14159/180;
                else if kb_angle == 361 && !other.free other.kb_angle = 40*3.14159/180;
                
                else other.kb_angle = kb_angle*3.14159/180;*/
                other.hitstun = kb_value*4*((other.knockback_adj-1)*0.6+1)+other.percent*0.12*kb_scale*4*0.65*other.knockback_adj;
                other.hitpause = hitpause + other.percent*hitpause_growth*0.05;
                other.old_hsp = other.hsp;
                other.old_vsp = other.vsp;
                if no_other_hit != 0 other.hit_lockout = no_other_hit;
                else other.hit_lockout = 10;
                other.hit_sound = sound_effect;
                other.hit_visual = hit_effect;
                other.hbox_group = hbox_group;
                other.hbox_player = player_id;
            }
        }
        with hit_id.player_id {
            has_hit = 1;
            //has_hit_player = 1;
            old_vsp = vsp;
            old_hsp = hsp;
            hitstop = other.hitpause;
            hitpause = 1;
            hsp = 0;
            vsp = 0;
        }
        if has_hit == 0 {
            sound_play(hit_sound);
            spawn_hit_fx(x,y,hit_visual);
        }
        has_hit = 1;
    }
} else invincible--;
if !mounted {
    if hsp != 0 to_dir = sign(hsp);
    if jump_down3 jump_held++;
    else jump_held = 0;
    if shield_down3 shield_held++;
    else shield_held = 0;
    //if attack_down3 && (!shield_down && attack_down) attack_fresh = 1;
    //if attack_down3 && (strong_down || shield_down || (aei_id.code1 && attack_down)  || ((aei_id.state == 6 || aei_id.state == 5) && aei_id.attack == AT_TAUNT)) attack_fresh = 1; //attack_down && (!shield_down) attack_fresh = 1;
    if attack_down attack_fresh = 1;
    //if !attack_down3 attack_fresh = 0;
    //if (up_strong_down || down_strong_down || right_strong_down || left_strong_down) attack_fresh = 1;
    if hbox_player != noone && hbox_player.state != 5 && hbox_player.state != 6 {
        hbox_group = -1;
        hbox_player = noone;
    }
}

if !free && ou_state != PS_WAVELAND && ou_state != PS_ROLL_BACKWARD && ou_state != PS_ROLL_FORWARD && ou_state != 6 && disp_state != PS_HITSTUN && ou_state != PS_JUMPSQUAT && disp_state != PS_LAND && disp_state != PS_LANDING_LAG {
    if to_dir != spr_dir  ou_state = PS_WALK_TURN;
    else {
        if (left_down3 || right_down3) ou_state = PS_WALK;
        else if down_down3 ou_state = PS_CROUCH;
        else ou_state = PS_IDLE; 
    }
    if shield_down3 && shield_held == 0 { // Roll only using player inputs
        if aei_id.left_down || aei_id.right_down && !jump_down3 {
            ou_state = PS_ROLL_BACKWARD;
            roll_dir = -1*aei_id.left_down+1*aei_id.right_down;
        }
        if jump_down3 && !jump_held == 0 {
            ou_state = PS_WAVELAND;
        }
    } else {
        if jump_down3 && !jump_held == 0 {
            out_state = PS_JUMPSQUAT;
        }
    }
    
}
if ((x < blast_left || x > blast_right || y > blast_bottom || (y < blast_top && hitstun > 0 ))) {
    sound_play(death_sound);
    aei_id.Ou = noone;
    instance_destroy();
    exit;
}
#define input_scr //Input Control
if control && attack_fresh {
    if ((up_strong_down || down_strong_down || right_strong_down || left_strong_down)) { //&& !((aei_id.state == 5 || aei_id.state == 6) && (aei_id.attack == AT_USTRONG || aei_id.attack == AT_DSTRONG  || aei_id.attack == AT_FSTRONG ))) {
        up_down = up_strong_down;
        down_down = down_strong_down;
        right_down = right_strong_down;
        left_down = left_strong_down;
        //strong_down = 1;
        //attack_down = 1;
        //strong_pressed = 1;
        //attack_pressed = 1;
    }
    attack_new = 1;
    attack_fresh = 0;
    attack = 0;
    spr_dir = -1*left_down + 1*right_down+spr_dir*(!(left_down || right_down));
    if !free {
        ou_state = 6; //ground
        if up_down attack = AT_UTHROW;
        else if down_down attack = AT_DTHROW;
        else if left_down || right_down attack = AT_FTHROW;
        else attack = AT_NTHROW;
    } else {
        ou_state = 5; //aerial
        if up_down attack = AT_USPECIAL_2;
        else if down_down attack = AT_DSPECIAL_2;
        else if left_down || right_down attack = AT_FSPECIAL_2;
        else attack = AT_NSPECIAL_2;
    }
}


if !mounted {
    if free {
        if point_distance(0,0,hsp,vsp) < air_max_speed {
            vsp += -air_accel*(up_down3)+air_accel*(down_down3);
            hsp += -air_accel*left_down3+air_accel*right_down3;
        }
    }
    
    if jump_down3 {
        if !free && ou_state != PS_WAVELAND && ou_state != PS_LAND {
            ou_state = PS_JUMPSQUAT;
        }
        if (free && djumps > 0 && disp_state == PS_FIRST_JUMP && (prev_state == PS_HITSTUN || ou_state_timer > 40)) {
            ou_state = PS_DOUBLE_JUMP;
        }
    }
    if ou_state != PS_WAVELAND && down_down3 && !jump_down3 && !attack_down3 && !shield_down3 {
        if !free && !place_meeting(x,y+1,asset_get("solid_32_obj")) {
            y++;
            free = 1;
        }
        can_be_grounded = false;
    } else can_be_grounded = true;
    
    if shield_down3 {
        if free && has_air_dodge && committed == 0 { 
            ou_state = PS_AIR_DODGE; 
            has_air_dodge = 0;
        }
    }
}

#define attack_scr // attack_scr(attack)
if attack_new {
    has_hit_en = false;
    last_attack = attack;
    with aei_id {
        other._ag_category = get_attack_value(other.attack,AG_CATEGORY);
        other._ag_num_windows = get_attack_value(other.attack,AG_NUM_WINDOWS);
        other._ag_sprite = get_attack_value(other.attack,AG_SPRITE);
        other._hg_num_hitboxes = get_num_hitboxes(other.attack);
    }
    for (i = 1; i <= _ag_num_windows; i += 1) {
        with aei_id {
            other._ag_window_length[other.i] = get_window_value(other.attack,other.i,AG_WINDOW_LENGTH);
            other._ag_window_anim_frames[other.i] = get_window_value(other.attack,other.i,AG_WINDOW_ANIM_FRAMES);
            other._ag_window_anim_frame_start[other.i] = get_window_value(other.attack,other.i,AG_WINDOW_ANIM_FRAME_START);
            if get_window_value(other.attack,other.i,AG_WINDOW_HAS_SFX) {
                other._ag_window_has_sfx[other.i] = get_window_value(other.attack,other.i,AG_WINDOW_HAS_SFX);
                other._ag_window_sfx[other.i] = get_window_value(other.attack,other.i,AG_WINDOW_SFX);
                other._ag_window_sfx_frame[other.i] = get_window_value(other.attack,other.i,AG_WINDOW_SFX_FRAME);
            } else {
                other._ag_window_has_sfx[other.i] = 0; 
            }
            other._ag_window_wifflag[other.i] = get_window_value(other.attack,other.i,AG_WINDOW_HAS_WHIFFLAG);
            other._ag_HSPEED[other.i] = get_window_value(other.attack,other.i,AG_WINDOW_HSPEED);
            other._ag_HSPEED_TYPE[other.i] = get_window_value(other.attack,other.i,AG_WINDOW_HSPEED_TYPE);
            other._ag_VSPEED[other.i] = get_window_value(other.attack,other.i,AG_WINDOW_VSPEED);
            other._ag_VSPEED_TYPE[other.i] = get_window_value(other.attack,other.i,AG_WINDOW_VSPEED_TYPE);
        }
    }
     for (i = 1; i <= _hg_num_hitboxes; i += 1) {
        with aei_id {
            other._hg_window[other.i] = get_hitbox_value(other.attack,other.i,HG_WINDOW);
            other._hg_window_frame[other.i] = get_hitbox_value(other.attack,other.i,HG_WINDOW_CREATION_FRAME);
            other._hg_x[other.i] = get_hitbox_value(other.attack,other.i,HG_HITBOX_X)*other.spr_dir;
            other._hg_y[other.i] = get_hitbox_value(other.attack,other.i,HG_HITBOX_Y);
            other._hg_bhitp[other.i] = get_hitbox_value(other.attack,other.i,HG_BASE_HITPAUSE);
            other._hg_shitp[other.i] = get_hitbox_value(other.attack,other.i,HG_HITPAUSE_SCALING);

        }
     }
    window_timer = 0;
    window = 1;
    attack_new = 0;
    ou_sprite_index = _ag_sprite;
}
window_timer++;
if window_timer >= _ag_window_length[window]*(1+.5*_ag_window_wifflag[window]*(!has_hit_en)) && window == _ag_num_windows {
        ou_state = PS_IDLE;
        disp_state = PS_IDLE;
        prev_state = disp_state;
        ou_state_timer = 0;
        ou_sprite_index = anim_ar[PS_IDLE];
}
if window_timer > _ag_window_length[window]*(1+.5*_ag_window_wifflag[window]*(!has_hit_en)) {
    window++;
    window_timer = 1;
}

//Set Speed
if window < array_length_1d(_ag_HSPEED_TYPE) {
    switch _ag_HSPEED_TYPE[window] {
        case 1:
            if window_timer == 1 hsp = _ag_HSPEED[window]*spr_dir;
            break;
        case 2:
            hsp = _ag_HSPEED[window]*spr_dir;
            break;
        default:
             if window_timer == 1 hsp += _ag_HSPEED[window]*spr_dir;
            break;
    }
}
if window < array_length_1d(_ag_VSPEED_TYPE) {
    switch _ag_VSPEED_TYPE[window] {
        case 1:
            if window_timer == 1 vsp = _ag_VSPEED[window];
            break;
        case 2:
            vsp = _ag_VSPEED[window];
            break;
        default:
            if window_timer == 1 vsp += _ag_VSPEED[window];
            break;
    }
}

//Sound
if _ag_window_has_sfx[window] == 1 && (_ag_window_sfx_frame[window]) == window_timer && _ag_window_sfx[window] != 0 {
    sound_play(_ag_window_sfx[window]);
}
//Hitbox Extension

for (j = 1; j <= _hg_num_hitboxes; j += 1) {
    if window == _hg_window[j] {
        if window_timer == (_hg_window_frame[j]+1) {
            /*
            with aei_id {
                create_hitbox(other.attack,other.j,other.x+other._hg_x[other.j],other.y+other._hg_y[other.j]);
            }*/
            hitb = create_hitbox(attack,j,x+_hg_x[j]*spr_dir,y+_hg_y[j]);
        }
    }
}


#define get_inputs_scr //Input Cloning
if !mounted && aei_id.state != PS_SPAWN {
    //4th frame of lag
    down_down3 = down_down2;
    up_down3 = up_down2;
    left_down3 = left_down2;
    right_down3 = right_down2;
    jump_down3 = jump_down2;
    attack_down3 = attack_down2;
    shield_down3 = shield_down2;
    taunt_down3 = taunt_down2;
    joy_dir3 = joy_dir2;
    up_strong_down3 = up_strong_down2;
    down_strong_down3 = down_strong_down2;
    left_strong_down3 = left_strong_down2;
    right_strong_down3 = right_strong_down2;
    strong_down3 = strong_down2;
    joy_pad_idle3 = joy_pad_idle2;
    //3rd frame of lag
    down_down2 = down_down1;
    up_down2 = up_down1;
    left_down2 = left_down1;
    right_down2 = right_down1;
    jump_down2 = jump_down1;
    attack_down2 = attack_down1;
    shield_down2 = shield_down1;
    taunt_down2 = taunt_down1;
    joy_dir2 = joy_dir1;
    up_strong_down2 = up_strong_down1;
    down_strong_down2 = down_strong_down1;
    left_strong_down2 = left_strong_down1;
    right_strong_down2 = right_strong_down1;
    strong_down2 = strong_down1;
    joy_pad_idle2 = joy_pad_idle1;
    //1st frame of lag
    down_down1 = down_down;
    up_down1 = up_down;
    left_down1 = left_down;
    right_down1 = right_down;
    jump_down1 = jump_down;
    attack_down1 = attack_down;
    shield_down1 = shield_down;
    taunt_down1 = taunt_down;
    joy_dir1 = joy_dir;
    up_strong_down1 = up_strong_down;
    down_strong_down1 = down_strong_down;
    left_strong_down1 = left_strong_down;
    right_strong_down1 = right_strong_down;
    strong_down1 = strong_down;
    joy_pad_idle1 = joy_pad_idle;
    with player_id { //Get inputs from layer
        other.down_down = down_down;
        other.up_down = up_down;
        other.left_down = left_down;
        other.right_down = right_down;
        other.jump_down = jump_down;
        //other.attack_down = attack_down || (down_stick_pressed || up_stick_pressed || left_stick_pressed || right_stick_pressed); ADAM CONTROL SCHEME
        other.attack_down = special_down || (down_stick_pressed || up_stick_pressed || left_stick_pressed || right_stick_pressed);
        other.shield_down = shield_down;
        other.taunt_down = taunt_down;
        other.joy_dir = joy_dir;
        other.up_strong_down = up_stick_pressed;
        other.down_strong_down = down_stick_pressed;
        other.left_strong_down = left_stick_pressed;
        other.right_strong_down = right_stick_pressed;
        other.strong_down = strong_down;
        other.joy_pad_idle = joy_pad_idle;
    }

    /*
    if ((up_strong_down || down_strong_down || right_strong_down || left_strong_down)) {
        down_down = down_strong_down;
        up_down = up_strong_down;
        left_down = left_strong_down;
        right_down = right_strong_down;
        strong_down = 1;
        attack_down = 1;
    }*/
    
}

if (mounted) { //|| ((aei_id.state == 5 || aei_id.state == 6 ) && aei_id.attack == AT_TAUNT)) {
    control = 1;
    with aei_id { //Get inputs from player
        other.down_down3 = down_down;
        other.up_down3 = up_down;
        other.left_down3 = left_down;
        other.right_down3 = right_down;
        other.jump_down3 = jump_down;
        other.attack_down3 = attack_down;
        other.shield_down3 = shield_down;
        other.taunt_down3 = taunt_down;
        other.joy_dir3 = joy_dir;
        other.up_strong_down3 = up_strong_down;
        other.down_strong_down3 = down_strong_down;
        other.left_strong_down3 = left_strong_down;
        other.right_strong_down3 = right_strong_down;
        other.joy_pad_idle3 = joy_pad_idle;
        if other.mounted {
            if state != 5 && state != 6 other.ou_state = state;
            else if !free other.ou_state = PS_IDLE;
            other.spr_dir = spr_dir;
            to_dir = spr_dir;
        }
    }
    
    /*if ((-left_down3 + right_down3) != 0) && !free {
        to_dir = -left_down3 + right_down3;
        spr_dir = -left_down3 + right_down3;
    }*/
}

#define var_edit_scr

if mounted != player_id.mounted {
    mounted = player_id.mounted;
    if mounted {
        control = 1;
        //attack_fresh = 0;
        range = 1;
    } else {
        range = 60;
    }
}
/*if aei_id.code2 {
    down_down3 = down_down;
    up_down3 = up_down;
    left_down3 = left_down;
    right_down3 = right_down;
    //if (aei_id.state == 6 || aei_id.state == 5) && aei_id.attack != AT_DSPECIAL && attack_down attack_fresh = 1;
}*/
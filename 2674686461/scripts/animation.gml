//metero anim swap
if shields_up {
    switch(state) {
        case(PS_SPAWN):
            sprite_index = sprite_get("idle_armor");
            image_index = state_timer*(idle_anim_speed*0.95);
            break;
        case(PS_RESPAWN):
            sprite_index = sprite_get("idle_armor");
            image_index = state_timer*(idle_anim_speed*0.95);
            break;
        case(PS_IDLE):
            sprite_index = sprite_get("idle_armor");
            image_index = state_timer*(idle_anim_speed*0.95);
            break;
        case(PS_CROUCH):
            sprite_index = sprite_get("crouch_armor");
            break;
        case(PS_WALK):
            sprite_index = sprite_get("walk_armor");
            image_index = state_timer*(walk_anim_speed*0.95);
            break;
        case(PS_WALK_TURN):
            sprite_index = sprite_get("walkturn_armor");
            break;
        case(PS_DASH_START):
            sprite_index = sprite_get("dashstart_armor");
            break;
        case(PS_DASH):
            sprite_index = sprite_get("dash_armor");
            image_index = state_timer*(dash_anim_speed*0.95);
            break;
        case(PS_DASH_STOP):
            sprite_index = sprite_get("dashstop_armor");
            break;
        case(PS_DASH_TURN):
            sprite_index = sprite_get("dashturn_armor");
            break;
        case(PS_JUMPSQUAT):
            sprite_index = sprite_get("jumpstart_armor");
            break;
        case(PS_IDLE_AIR):
            sprite_index = sprite_get("jump_armor");
            break;
        case(PS_FIRST_JUMP):
            sprite_index = sprite_get("jump_armor");
            break;
        case(PS_DOUBLE_JUMP):
            sprite_index = sprite_get("doublejump_armor");
            break;
        case(PS_WALL_JUMP):
            sprite_index = sprite_get("walljump_armor");
            break;
        case(PS_AIR_DODGE):
            sprite_index = sprite_get("airdodge_armor");
            break;
        case(PS_LAND):
            sprite_index = sprite_get("land_armor");
            break;
        case(PS_LANDING_LAG):
            sprite_index = sprite_get("landinglag_armor");
            break;
        case(PS_PRATFALL):
            sprite_index = sprite_get("pratfall_armor");
            break;
        case(PS_PRATLAND):
            sprite_index = sprite_get("land_armor");
            break;
         case(PS_WAVELAND):
            sprite_index = sprite_get("waveland_armor");
            break;
        case(PS_HITSTUN):
            sprite_index = sprite_get("hurt_armor");
            break;
        case(PS_TUMBLE):
            sprite_index = sprite_get("hurt_armor");
            break;
        case(PS_HITSTUN_LAND):
            sprite_index = sprite_get("hurt_armor");
            break;
        case(PS_PARRY_START):
            sprite_index = sprite_get("parry_armor");
            break;
        case(PS_PARRY):
            sprite_index = sprite_get("parry_armor");
            break;
        case(PS_ROLL_BACKWARD):
            sprite_index = sprite_get("roll_backward_armor");
            break;
        case(PS_ROLL_FORWARD):
            sprite_index = sprite_get("roll_forward_armor");
            break;
        case(PS_TECH_GROUND):
            sprite_index = sprite_get("tech_armor");
            break;
        case(PS_TECH_BACKWARD):
            sprite_index = sprite_get("roll_backward_armor");
            break;
        case(PS_TECH_FORWARD):
            sprite_index = sprite_get("roll_forward_armor");
            break;
        case(PS_WALL_TECH):
            sprite_index = sprite_get("walljump_armor");
            break;
        case(PS_WRAPPED):
            sprite_index = sprite_get("hurt_armor");
            break;
        case(PS_FROZEN):
            sprite_index = sprite_get("hurt_armor");
            break;
    }
}

if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND {
    switch(attack) {
        case AT_JAB:
            if shields_up {sprite_index = sprite_get("jab_armor");}
            else {sprite_index = sprite_get("jab");}
            break;
        case AT_DATTACK:
            if shields_up {sprite_index = sprite_get("dattack_armor");}
            else {sprite_index = sprite_get("dattack");}
            break;
        case AT_FTILT:
            if shields_up {sprite_index = sprite_get("ftilt_armor");}
            else {sprite_index = sprite_get("ftilt");}
            break;
        case AT_DTILT:
            if shields_up {sprite_index = sprite_get("dtilt_armor");}
            else {sprite_index = sprite_get("dtilt");}
            break;
        case AT_UTILT:
            if shields_up {sprite_index = sprite_get("utilt_armor");}
            else {sprite_index = sprite_get("utilt");}
            break;
        case AT_NAIR:
            if shields_up {sprite_index = sprite_get("nair_armor");}
            else {sprite_index = sprite_get("nair");}
            break;
        case AT_FAIR:
            if shields_up {sprite_index = sprite_get("fair_armor");}
            else {sprite_index = sprite_get("fair");}
            break;
        case AT_DAIR:
            if shields_up {sprite_index = sprite_get("dair_armor");}
            else {sprite_index = sprite_get("dair");}
            break;
        case AT_BAIR:
            if shields_up {sprite_index = sprite_get("bair_armor");}
            else {sprite_index = sprite_get("bair");}
            break;
        case AT_UAIR:
            if shields_up {sprite_index = sprite_get("uair_armor");}
            else {sprite_index = sprite_get("uair");}
            break;
        case AT_FSTRONG:
            var chargewindow = get_attack_value(attack,AG_STRONG_CHARGE_WINDOW);
            if window == chargewindow { //animated charge windows
                image_index = ease_linear(get_window_value(attack,chargewindow,AG_WINDOW_ANIM_FRAME_START),
                get_window_value(attack,chargewindow,AG_WINDOW_ANIM_FRAME_START)-1+get_window_value(attack,chargewindow,AG_WINDOW_ANIM_FRAMES),
                floor(strong_charge_anim_timer),
                get_window_value(attack,chargewindow,AG_WINDOW_LENGTH));
            }
            if shields_up {sprite_index = sprite_get("fstrong_armor");}
            else {sprite_index = sprite_get("fstrong");}
            break;
        case AT_DSTRONG:
            var chargewindow = get_attack_value(attack,AG_STRONG_CHARGE_WINDOW);
            if window == chargewindow { //animated charge windows
                image_index = ease_linear(get_window_value(attack,chargewindow,AG_WINDOW_ANIM_FRAME_START),
                get_window_value(attack,chargewindow,AG_WINDOW_ANIM_FRAME_START)-1+get_window_value(attack,chargewindow,AG_WINDOW_ANIM_FRAMES),
                floor(strong_charge_anim_timer),
                get_window_value(attack,chargewindow,AG_WINDOW_LENGTH));
            }
            if shields_up {sprite_index = sprite_get("dstrong_armor");}
            else {sprite_index = sprite_get("dstrong");}
            break;
        case AT_USTRONG:
            var chargewindow = get_attack_value(attack,AG_STRONG_CHARGE_WINDOW);
            if window == chargewindow { //animated charge windows
                image_index = ease_linear(get_window_value(attack,chargewindow,AG_WINDOW_ANIM_FRAME_START),
                get_window_value(attack,chargewindow,AG_WINDOW_ANIM_FRAME_START)-1+get_window_value(attack,chargewindow,AG_WINDOW_ANIM_FRAMES),
                floor(strong_charge_anim_timer),
                get_window_value(attack,chargewindow,AG_WINDOW_LENGTH));
            }
            if shields_up {sprite_index = sprite_get("ustrong_armor");}
            else {sprite_index = sprite_get("ustrong");}
            break;
        case AT_NSPECIAL:
            if shields_up {sprite_index = sprite_get("nspecial_armor");}
            else {sprite_index = sprite_get("nspecial");}
            break;
        case AT_DSPECIAL:
            if shields_up {sprite_index = sprite_get("dspecial_armor");}
            else {sprite_index = sprite_get("dspecial");}
            break;
        case AT_USPECIAL:
            if shields_up {sprite_index = sprite_get("uspecial_armor");}
            else {sprite_index = sprite_get("uspecial");}
            break;
        case AT_TAUNT:
            if shields_up {sprite_index = sprite_get("taunt_armor");}
            else {sprite_index = sprite_get("taunt");}
            break;
    }
}
 
 
 
 
 
 
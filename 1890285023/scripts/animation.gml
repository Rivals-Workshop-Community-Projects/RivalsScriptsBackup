//animation

var fspecial = sprite_get("fspecial_hurt");
var fspecial_air = sprite_get("fspecial_air_hurt");
var parachute = sprite_get("parachute_hurt");

set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_left"));
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air_left"));
if (spr_dir == 1) {
    set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_right"));
    set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air_right"));
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
    if (attack == AT_FSPECIAL && window > 1) {
        image_index = window - 3 + (judge_outcome * 2);
    }
    if (attack == AT_DSPECIAL) {
        if (window < 3) {
            image_index = oil_charge * 2;
        }
        else if (window == 3) {
            image_index = 1 + (oil_charge * 2);
        }
    }
    with (pHurtBox) {
        if (player == other.player) {
            if (other.attack == AT_FSPECIAL) {
                sprite_index = fspecial;
                if (other.free) {
                    sprite_index = fspecial_air;
                }
            }
            if (other.attack == AT_EXTRA_1) {
                sprite_index = parachute;
            }
            break;
        }
    }
}
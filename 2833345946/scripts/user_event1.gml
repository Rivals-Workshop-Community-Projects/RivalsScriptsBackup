//user_event1

//pickup sword

//check for sword articles/projs
if sword_proj != undefined && !instance_exists(sword_proj) {
    sword_proj = undefined
    sound_stop(sound_get("mantis_proj_loop"))
}

if sword_proj != undefined && instance_exists(sword_proj) && instance_place(x, y+30, sword_proj) {
    var sword_obj = sword_proj
} else {
    var sword_obj = instance_position(x, y-20, obj_article1)
}

if sword_obj != noone && ("is_reckless" in sword_obj) && sword_obj.can_pickup {
    if stance == 1 {
        stance = 0
        sound_play(asset_get("sfx_zetter_shine"))
        instance_destroy(sword_obj)
        sound_stop(sound_get("mantis_proj_loop"))
        
        if state == PS_DASH || state == PS_DASH_START || state == PS_DASH_TURN sound_play(sfx_metal_grind, true, noone, 0.5)
        
        if ruber_attacking {
            switch attack {
                case AT_EXTRA_1: attack = AT_JAB break;
                case AT_EXTRA_2: attack = AT_BAIR break;
                case AT_EXTRA_3: attack = AT_FAIR break;
                case AT_DTHROW: attack = AT_DAIR break;
                case AT_UTHROW: attack = AT_DTILT break;
                case AT_FSPECIAL_2: attack = AT_NSPECIAL break;
                case AT_NSPECIAL_2: attack = AT_FSPECIAL break;
                case AT_USPECIAL_2: attack = AT_USPECIAL break;
                case AT_FSPECIAL_AIR: attack = AT_DATTACK break;
                case AT_DSPECIAL_2: attack = AT_DSPECIAL break;
                case AT_FSTRONG_2: attack = AT_FSTRONG break;
                case AT_USTRONG_2: attack = AT_USTRONG break;
                case AT_DSTRONG_2: attack = AT_DSTRONG break;
                case AT_DSPECIAL_AIR: attack = AT_FTILT break;
            }
            
            hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
        }
        
        pickup_alpha = 1
        
        var _fx = spawn_hit_fx(x, y-30, 194)
            _fx.depth = 20
    }
}
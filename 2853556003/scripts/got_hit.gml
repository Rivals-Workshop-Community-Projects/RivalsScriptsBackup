//hi
double_jump_timer = 0
grabbedid = noone

if(attack == AT_DSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
    if(super_armor == true && enemy_hitboxID.kb_value > 0 && enemy_hitboxID.hitpause > 0){
        spawn_hit_fx(x + 30*spr_dir, y - 31 + 5*sin(state_timer/16), vfx_shieldshatter)
        super_armor = false
        sound_play(sound_get("sfx_watershield_deactivate"))
        move_cooldown[AT_DSPECIAL] = 240
        extended_cooldown = true
        if(window == 2){
            state_timer = 15
        }
    }
}

if(ai == 1){
    if(attack == AT_FSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
        fspecial_waver -= 1
    }
    if(attack == AT_DATTACK && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) ){
        dattack_waver -= 1
    }
    if(attack == AT_DTILT && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
        dattack_waver -= 1
    }
}
//hi
double_jump_timer = 0
grabbedid = noone

if(attack == AT_DSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
    if(super_armor == true && enemy_hitboxID.kb_value > 0 && enemy_hitboxID.hitpause > 0){
        if(!(has_rune("N") || all_runes)){
            spawn_hit_fx(x + 30*spr_dir, y - 31 + 5*sin(state_timer/16), vfx_shieldshatter)
            super_armor = false
            sound_play(sound_get("sfx_watershield_deactivate"))
            move_cooldown[AT_DSPECIAL] = 240
            extended_cooldown = true
            if(window == 2){
                state_timer = 15
            }
        }else{
            bloodFuseDamage(1)
            sound_play(asset_get("sfx_shovel_hit_light1"))
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

#define bloodFuseDamage(damage)

take_damage(player, -1, damage)
spawn_hit_fx(x, y - 25, vfx_waterhit_small)
sound_play(sound_get("sfx_blood"))
move_cooldown[AT_NSPECIAL] = max(0, move_cooldown[AT_NSPECIAL] - (damage * 4))
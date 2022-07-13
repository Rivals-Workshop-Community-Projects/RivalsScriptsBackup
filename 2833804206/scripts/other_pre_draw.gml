//other_pre_draw.gml

with other_player_id if ("strong_throw" in self) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
    if attack == AT_FSPECIAL {
        draw_sprite_ext(sprite_get("fspecial_arm_back"), image_index, x, y, spr_dir, 1, 0, c_white, 1)
    }
    
    if strong_throw && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) {
        var arm_spr = undefined
        if attack == AT_FSTRONG arm_spr = sprite_get("fstrong_arm_back")
        if attack == AT_DSTRONG arm_spr = sprite_get("dstrong_arm_back")
        if attack == AT_USTRONG arm_spr = sprite_get("ustrong_arm_back")
        draw_sprite_ext(arm_spr, image_index, x, y, spr_dir, 1, 0, c_white, 1)
    }
}
//post-draw

if strong_throw && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) {
    var arm_spr = undefined
    if attack == AT_FSTRONG arm_spr = sprite_get("fstrong_arm")
    if attack == AT_DSTRONG arm_spr = sprite_get("dstrong_arm")
    if attack == AT_USTRONG arm_spr = sprite_get("ustrong_arm")
    draw_sprite_ext(arm_spr, image_index, x, y, spr_dir, 1, 0, c_white, 1)
}
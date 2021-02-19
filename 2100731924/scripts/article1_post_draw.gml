// article post draw

if(showNspecialCooldown && !player_id.runeE){
    if(player_id.move_cooldown[AT_NSPECIAL]){
        draw_sprite_ext(nspecialCooldownBar, 0, x - 20*spr_dir, y - 30, spr_dir, 1, 0, -1, 1);
        draw_sprite_ext(nspecialCooldownCharge, 0, x - 18*spr_dir, y - 10, spr_dir, -(player_id.BATIT_NSPECIAL_COOLDOWN - player_id.move_cooldown[AT_NSPECIAL])*9/player_id.BATIT_NSPECIAL_COOLDOWN, 0, -1, 1);
    } else {
        showNspecialCooldown = false;
    }
}
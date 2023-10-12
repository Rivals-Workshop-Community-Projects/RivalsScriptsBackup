// Drawing Hud Stuff

try {
    if (atk_NSpecialRechargeTimer == -1) {
        draw_sprite_ext(sprite_get("hudproj"), atk_NSpecialProjectile, temp_x + 14, temp_y, 1, 1, 0, -1, 1);
    } else {
        draw_sprite_ext(sprite_get("hudproj"), 0, temp_x + 14, temp_y, 1, 1, 0, -1, 1);
    }
    //FlytrapCooldownTimer
    draw_sprite_ext(sprite_get("hudcooldown"), ceil(FlytrapCooldownTimer / 52), temp_x + 80, temp_y, 1, 1, 0, -1, 1);
    
} catch (err) {}
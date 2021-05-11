shader_start();

// Draw the hand spinning a hat like a propeller
if ((attack == AT_USPECIAL)
    && ((state == PS_ATTACK_AIR) || (state == PS_ATTACK_GROUND)))
{
    if (window == 7) {
        if (window_timer < 5) {
            draw_sprite_ext(sprite_get("hat_arm"), 0,
                            x - (spr_dir * 65), y - 94,
                            spr_dir, 1, 0, c_white, 1);
        } else {
            draw_sprite_ext(sprite_get("hat_arm"), 1,
                            x - (spr_dir * 65), y - 94,
                            spr_dir, 1, 0, c_white, 1);
        }
    }
}

// Possible future effects:
// Emojis emanate off of targets struck with emoji-empowered moves
// Green plus-signs emanate off healed characters

// Joke primed aura
if (comedy_zone_charges_granted > 0) {
    var local_joke_aura_timer = (joke_aura_timer + 1) % joke_aura_timer_max;
    var aura_sprite_index = 16 - ((local_joke_aura_timer / 4) % 16);
    draw_sprite_ext(sprite_get("nspecial_aura"), aura_sprite_index, x + (spr_dir * 1), y, spr_dir, 1, 0, c_white, 1);
}

shader_end();
//animation
if(attack == AT_UAIR && state == PS_ATTACK_AIR){
    if(window == 1 && strong_charge > 0){
        image_index = 2 + (strong_charge / 7) % 4;
    }
}

if (state == PS_SPAWN)
{
    draw_indicator = false
    if (introTimer < sprite_get_number(sprite_get("intro")) && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
        draw_indicator = true;
    }
}
else
{
    draw_indicator = true;
}


switch (state){
    case PS_PARRY:
    if jestermode{
        sprite_index = sprite_get("jestermode_parry")
        if state_timer == 0{
            sound_play(sound_get("JMparry"));
            rand_parry_sprite = random_func( 0, sprite_get_number(sprite_index), true);
        }
        image_index = rand_parry_sprite;
    }
    break;
    
    default:
    if state_cat == SC_HITSTUN{
        if !hurt_img && jestermode sprite_index = sprite_get("jestermode_bighurt");
        if butthurt || (hurt_img == 4 && jestermode) sprite_index = sprite_get("jestermode_uphurt");
        image_index = state_timer/3;
        if !free sprite_index = sprite_get("hurtground");
    }
    break;
    
    case PS_ATTACK_GROUND:
    case PS_ATTACK_AIR:
    if attack == AT_FSPECIAL && image_index == clamp(image_index, 5, 9) draw_y = -34;
    else draw_y = 0;
    break;
}
if state_cat != SC_HITSTUN butthurt = 0;

if(state == PS_PRATLAND){
	sprite_index = sprite_get("pratland");
}
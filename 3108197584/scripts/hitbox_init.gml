//hitbox_init
prevsp = 0;
switch attack{
    
    case AT_NSPECIAL:
    hb_state = 0;
    hb_timer = 0;
    hb_life = 0;
    hb_life_max = 180;
    boom = player_id.missile_explode;
    og_owner = player_id;
    targeting = sound_get("sfx_missile_target");
    home_val = 0.02 + 0.98*has_rune("K");
    trail_smoke = player_id.trail_smoke;
    sprite_index = sprite_get("nspecial_missile" + (player_id.alt_cur == 4? "_phaz": (player_id.alt_cur == 23? "_tron": "")));
    angle_change = player_id.missile_angle
    should_angle = 1;
    is_a_rosso_missile = 1;
    break;
}

cond = (sprite_index == sprite_get("shell_shot")) + (sprite_index == sprite_get("shell_sniper"))*2;
if cond sprite_index = sprite_get((cond = 1? "shell_shot": "shell_sniper") + (player_id.alt_cur == 7? "_phaz": (player_id.alt_cur == 24? "_tron": "")));
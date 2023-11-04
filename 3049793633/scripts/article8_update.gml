with (asset_get("oPlayer"))     if (string_count("sonic", string_lower(get_char_info(player, INFO_STR_NAME))) > 0)
{
    with (other)
    {
        instance_destroy()
    }
}

if "speedstar_timer" not in obj_stage_main exit;

if (obj_stage_main.speedstar_timer < 12) {
    obj_stage_main.speedstar_timer += 1
}

if (obj_stage_main.speedstar_timer = 3) {
    image_index = 1
}

if (obj_stage_main.speedstar_timer = 6) {
    image_index = 2
}

if (obj_stage_main.speedstar_timer = 9) {
    image_index = 3
}

if (obj_stage_main.speedstar_timer = 12) {
    image_index = 0
    obj_stage_main.speedstar_timer = 1
}

if (obj_stage_main.cameos_state = 4) {
    hsp = 0.50
}

if (x >= 1620) {
    hsp = 0
    x = 16
}

if (obj_stage_main.chase = 4) {
        sprite_index = sprite_get("chase");
        if is_aether_stage() {
            sprite_index = sprite_get("chase_a");
        }
    }
    
if (obj_stage_main.chase != 4) {
        sprite_index = sprite_get("speedstar");
        if is_aether_stage() {
            sprite_index = sprite_get("speedstar_a");
        }
    }
    
if (obj_stage_main.chase = 5) {
        obj_stage_main.chase = 1
    }
with (asset_get("oPlayer"))     if (string_count("eggman", string_lower(get_char_info(player, INFO_STR_NAME))) > 0)
{
    with (other)
    {
        instance_destroy()
    }
}

if "eggmobile_timer" not in obj_stage_main exit;

if (obj_stage_main.eggmobile_timer < 12) {
    obj_stage_main.eggmobile_timer += 1
}

if (obj_stage_main.eggmobile_timer = 3) {
    image_index = 1
}

if (obj_stage_main.eggmobile_timer = 6) {
    image_index = 2
}

if (obj_stage_main.eggmobile_timer = 9) {
    image_index = 3
}

if (obj_stage_main.eggmobile_timer = 12) {
    image_index = 0
    obj_stage_main.eggmobile_timer = 1
}

if (obj_stage_main.cameos_state = 3) {
    hsp = -0.50
}

if (x <= 16) {
    hsp = 0
    x = 1264
}
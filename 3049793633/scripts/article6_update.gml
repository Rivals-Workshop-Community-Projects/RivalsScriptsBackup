//Checks for characters in the match and destroys the article if true.
with (asset_get("oPlayer"))     if (string_count("tails", string_lower(get_char_info(player, INFO_STR_NAME))) > 0)
{
    with (other)
    {
        instance_destroy()
    }
}

//Removes a harmless error from appearing in the debug log due to article inits running before init.
if "tornado_timer" not in obj_stage_main exit;

//Controls the article's animation speed by manuually setting the image_index.
//(Using image_speed doesn't stop the animation when the game is paused).
//While not the best method, this allows for exact control over how long each frames lasts compared to others.
if (obj_stage_main.tornado_timer < 12) {
    obj_stage_main.tornado_timer += 1
}

if (obj_stage_main.tornado_timer = 3) {
    image_index = 1
}

if (obj_stage_main.tornado_timer = 6) {
    image_index = 2
}

if (obj_stage_main.tornado_timer = 9) {
    image_index = 3
}

if (obj_stage_main.tornado_timer = 12) {
    image_index = 0
    obj_stage_main.tornado_timer = 1
}

//Edits the article's position when called or reset.
if (obj_stage_main.cameos_state = 2) {
    hsp = 0.50
}

if (x >= 1620) {
    hsp = 0
    x = 16
}
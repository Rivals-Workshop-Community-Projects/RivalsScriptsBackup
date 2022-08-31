var anim_sprite = floor(state_timer / 4);
if (anim_sprite > 3) {
    destroy = true;
}

if (pain_level == 3 && sprite_index == spr_idle) {
    sprite_index = spr_alt;
}


if (master_crack && state_timer == 0) {
    var next_variation = variation;
    var loops = 0;
    sprite_index = spr_alt;
    while ((!max_left || !max_right) && loops < quake_size) {
        if (!max_left) {
            if (place_meeting(x - base_width - 16 * left_checks, y + 1, asset_get("par_block"))){
                next_variation = variation_tick(next_variation);
                var new_crack = instance_create(x - 16 * left_checks, y, "obj_article1");
                new_crack.master_crack = false;
                new_crack.pain_level = pain_level;
                new_crack.variation = next_variation;
            }
            else {
                max_left = true;
            }
            left_checks++;
        }
        if (!max_right) {
            if (place_meeting(x + base_width + 16 * right_checks, y + 1, asset_get("par_block"))){
                next_variation = variation_tick(next_variation);
                var new_crack = instance_create(x + 16 * right_checks, y, "obj_article1");
                new_crack.master_crack = false;
                new_crack.pain_level = pain_level;
                new_crack.variation = next_variation;
            }
            else {
                max_right = true;
            }
            right_checks++;
        }
        loops++;
    }
    print("completed " + string(loops) + " loops")
}


if (hitbox_check == 0 && !hitstop) {
    to_spawn = 4 + pain_level;
    with(player_id)
        other.hbox = create_hitbox(AT_DSPECIAL, other.to_spawn, other.x - 32, other.y);
    if (pain_level == 3) {
        spawn_hit_fx( x, y - 20, vfx_magic);
    }
    hitbox_check = 1;
}



if (destroy) {
    if (instance_exists(hbox)) instance_destroy(hbox);
    instance_destroy();
    exit;
}

image_index = anims[variation][anim_sprite];
state_timer++;

//print("HELLO")

#define variation_tick(passed_int)
var new_int = passed_int + 1;
//print(string(new_int));
if (new_int > 4) {
    return 0;
}
else {
    return new_int;
}
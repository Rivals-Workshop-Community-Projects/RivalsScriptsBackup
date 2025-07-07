
// Portrait init
if ("draw_items" not in self) {
    
    
    ITEM_SHIPPING_ALT = 5;
    ITEM_ICEBAND_ALT = 20;
    draw_items = noone;
    
    // Retrieve item smuggler
    var inventory_list = noone;
    with obj_article3 if player == other.player {
         inventory_list = self.inventory_list;
         persistent = false;
         instance_destroy(self);
    }
    
    if (inventory_list == noone) {
        print_debug("Failed to retrieve inventory list. Default portrait will be used.")
        exit;
    }
    
    // Init item listing, exit if known to be empty
    draw_items = [];
    hoof_active = false; // Can still be overridden by other boots!
    ukelele_active = (array_contains(inventory_list, 20)); // This one's basically guaranteed, though
    
    // For all prioritized item groups, items earlier in the list
    // will be overridden by those later in the list.
    
    // Jetpack replacement (prioritized)
    var pack = 59; // Default, denotes that Commando's regular pack should be drawn
    var pack_items = [29, 25, 37, 39];
    for (var i = 0; i < array_length(pack_items); i++) {
        if (array_contains(inventory_list, pack_items[i])) pack = pack_items[i];
    }
    array_push(draw_items, pack);
    
    // Behind
    var behind_items = [1, 0, 24, 35, 34, 44, 45];
    for (var i = 0; i < array_length(behind_items); i++) {
        if (array_contains(inventory_list, behind_items[i])) array_push(draw_items, behind_items[i]);
    }
    
    // Knife replacement (prioritized)
    var knife = 60; // Default, denotes that Commando's regular knife should be drawn
    var knife_items = [11, 12, 57];
    for (var i = 0; i < array_length(knife_items); i++) {
        if (array_contains(inventory_list, knife_items[i])) knife = knife_items[i];
    }
    array_push(draw_items, knife);
    
    // Leg replacement (prioritized)
    var leg = noone;
    var leg_items = [2, 5, 7, 38, 32];
    for (var i = 0; i < array_length(leg_items); i++) {
        if (array_contains(inventory_list, leg_items[i])) leg = leg_items[i];
    }
    if (leg == 5) {
        hoof_active = true; // for portrait swap
        leg = noone;
    }
    if (leg != noone) array_push(draw_items, leg);
    
    // Chest overlay (prioritized)
    var chest = noone;
    var chest_items = [23, 50, 22];
    for (var i = 0; i < array_length(chest_items); i++) {
        if (array_contains(inventory_list, chest_items[i])) chest = chest_items[i];
    }
    if (chest != noone) array_push(draw_items, chest);
    
    // (Nearly) everything else
    var other_items = [
        3, 42, 27, 15, 36, // Belt
        28, 33, // Missiles (this is cheating a bit, since ATG2 covers ATG1)
        55, 13, 18, 4, 46, // Arm
        21, 48, 56, 40, 41, // Gun
        16, 30, // Misc
        6, 14, 10, 47, 8, // Head (lower)
        17, 49, // Familiars
        43, 58, // TBD
    ];
    for (var i = 0; i < array_length(other_items); i++) {
        if (array_contains(inventory_list, other_items[i])) array_push(draw_items, other_items[i]);
    }
    
    // SRF and Runald's Band: load an alternate sprite for Ukelele portrait
    if (array_contains(inventory_list, 19)) {
        if (ukelele_active) array_push(draw_items, ITEM_ICEBAND_ALT);
        else array_push(draw_items, 19);
    }
    if (array_contains(inventory_list, 51)) {
        if (ukelele_active) array_push(draw_items, ITEM_SHIPPING_ALT);
        else array_push(draw_items, 51);
    }

    // Abyss items are explicitly not drawn
    
    // Headgear (prioritized)
    var head = noone;
    var head_items = [26, 53, 54];
    for (var i = 0; i < array_length(head_items); i++) {
        if (array_contains(inventory_list, head_items[i])) head = head_items[i];
    }
    if (head != noone) array_push(draw_items, head);
    
    // Do portrait replacements
    if (hoof_active && ukelele_active) {
        set_victory_portrait(sprite_get("portrait_both"));
    } else if (hoof_active) {
        set_victory_portrait(sprite_get("portrait_hoof"));
    } else if (ukelele_active) {
        set_victory_portrait(sprite_get("portrait_ukelele"));
    }
    
}

// Draw items
if (draw_items != noone) {
    for (var i = 0; i < array_length(draw_items); i++) {
        draw_sprite_ext(sprite_get("portrait_items"), draw_items[i], portrait_x, portrait_y, 2, 2, 0, c_white, 1);
    }
    
    var flash = black_flash_alpha*2;
    if (flash > 0) {
        gpu_set_fog(true, c_black, depth, depth);
        for (var i = 0; i < array_length(draw_items); i++) {
            draw_sprite_ext(sprite_get("portrait_items"), draw_items[i], portrait_x, portrait_y, 2, 2, 0, c_white, flash);
        }
        gpu_set_fog(false, c_white, 0, 0);
    }
}


// Not terribly efficient, but that's not a huge deal for this
#define array_contains(arr, value)
    for (var i = 0; i < array_length(arr); i++) {
        if (arr[i] == value) return true;
    }
    return false;
//article3_update.gml
state_timer++;
switch (state) {
    case 0: //newly spawned
        if (state_timer == 1) image_index = 1;
        else image_index += 0.33;
        y += 1;
        if (state_timer >= 10) { state = 1; state_timer = 0; }
    break;
    
    case 1: //spring active
        if (state_timer == 1) image_index = 8;
        if (image_index < 8) image_index += 0.33;
        spring_launch_players();
        if (spring_used) { state = 2; state_timer = 0; }
        else if (state_timer >= 180) { state = 3; state_timer = 0; }
    break;
    
    case 2: //spring active, but used
        if (image_index < 8) image_index += 0.33;
        spring_launch_players();
        if (state_timer >= 30) { state = 3; state_timer = 0; }
    break;
    
    case 3: //despawn spring
        //insert animation here
        if (state_timer == 1) image_index = 8;
        else image_index += 0.33;
        //sprite_index = asset_get("empty_sprite");
        if (state_timer >= 10) { destroy = true; }
    break;
}
if (destroy) { instance_destroy(); }





#define spring_launch_players
with (oPlayer) {
    //only trigger if the player is in a neutral state OR the player is peacock
    if (state_cat != SC_AIR_NEUTRAL && id != other.player_id) continue;
    //falling check, hitpause check, estimate collision check
    if (vsp <= 0 || hitpause || y < other.y || y > other.y + 48 || abs(x - other.x) > 64) continue;
    
    //precise collision check
    
    var hurtbox_collision;
    var spring_id = other.id;
    with (hurtboxID) {
        hurtbox_collision = place_meeting(x, y, spring_id);
    }
    if (!hurtbox_collision) continue;
    
    
    //launch the player
    hitpause = true;
    hitstop = 3;
    y = other.y;
    old_hsp = clamp(hsp / 2 + (right_down - left_down) * 3, -5, 5);
    old_vsp = -other.spring_jump_speed; //set in article3_init.gml
    with (other) {
        sound_play(sound_get("sjump"));
        spring_used = true;
        image_index = 3;
    }
}
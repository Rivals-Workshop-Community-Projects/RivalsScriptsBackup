if (random_func(10, 3, true) >= 1) { 
    sprite_index = sprite_get("bubbleb");
    mask_index = sprite_get("bubbleb");
} else {
    sprite_index = sprite_get("bubbles");
    mask_index = sprite_get("bubbles");
}
image_index = 0;                               
spr_dir = player_id.spr_dir;
uses_shader = true;   
ignores_walls = false;
last_hsp = 0;
life = 0;
lifetime = 1400;
unpopped = true;
hit = false;

random_index = player_id.bubbles_spawned;

damaged = false;

var spreadh = 0;
var spreadv = 0;
var randh = 0;
var randv = 0;
    
if (player_id.attack == AT_NSPECIAL) {
    if (player_id.window == 2) {
        randh = 0.1;
        randv = -0.35;
        spreadh = 14;
        spreadv = 6;
    } else
    if (player_id.window == 3) {
        y -= 13;
        randh = 0.05;
        randv = -1.5;
        spreadh = 13;
        spreadv = 14;
    } else {
        y += 5;
        randh = 0.1;
        randv = 0.1;
        spreadh = 14;
        spreadv = 14;
    }
} else if (player_id.attack == AT_DSPECIAL){
    //DSPECIAL bubble momentum
    
    randv = -0.1
    spreadv = 8;
    randh = 0.25;
    spreadh = 5;
} else if (player_id.attack == AT_USTRONG) {
    randv = -1.4
    spreadv = 8;
    randh = -0.2;
    spreadh = 4;
} else if (player_id.attack == AT_DSTRONG) {
    randv = -0.25
    spreadv = 5;
    randh = 0.1;
    spreadh = 13;
    if (player_id.window_timer > 7) {
        randh = -1.4;
    }
}
else if (player_id.attack == AT_FSTRONG) {
    randv = -0.25
    spreadv = 5;
    randh = 0.1;
    spreadh = 13;
}
randh += random_func( 0, spreadh, false ) / 10;
    
randv += random_func( 1, spreadv, false ) / 10;
    
if (player_id.attack == AT_DSPECIAL) {
    if (random_func(23, 2, true) == 0) randh *= -1;
}
    
hsp = (4 * player_id.spr_dir) * randh;
vsp = 2.5 * randv;



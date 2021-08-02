//SONG

if (init == 0){
    init = 1;
}

state_timer++;
lifetime -= 1;

var swing_time = 50;

image_index = state_timer * 5 / swing_time;

if (lifetime > 1190) {
    image_alpha += 0.1;
}

if (lifetime < 10) {
    image_alpha -= 0.1;
}

if (lifetime = 0) {
    
    
    instance_destroy();
    exit;
}

if (player_id.special_pressed && player_id.down_down && player_id.attack == AT_DSPECIAL && player_id.move_cooldown[AT_DSPECIAL] == 0){
    lifetime = 10;
}
//article1_init
bell_type = 0;
bell_type2 = 10;
var randombelltype = random_func(0,10, true);
if(randombelltype < 9 || bell_type2 == 0){
    sprite_index = sprite_get("bells_coin");
}else if(randombelltype >= 9 || bell_type2 == 1){
    sprite_index = sprite_get("bells_bag");
    bell_type = 1;
}

coin_timer = 0
can_be_grounded = true;
ignores_walls = false;
hit_wall = true;
uses_shader = true;
destroyed = false;

hsp = 0;
hsp += random_func(1,6, true);
var randomhsp = random_func(0,2, true);
if(randomhsp == 0){
    hsp = -hsp;
}
vsp = 0;
vsp -= random_func(7,9, true);

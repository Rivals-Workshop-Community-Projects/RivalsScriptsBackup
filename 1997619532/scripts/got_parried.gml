
if (my_hitboxID.attack == AT_EXTRA_1) {
    set_state (PS_PRATFALL)
    parry_lag = 60;
}    


if (my_hitboxID.attack == AT_DSTRONG) {
    set_state (PS_PRATFALL)
    parry_lag = 60;
}   


if (my_hitboxID.attack == AT_DAIR) {
    set_state (PS_PRATFALL)
    parry_lag = 45;
}    


halob -= 1


if (my_hitboxID.attack == AT_JAB) {
    parry_lag = 0;
}  


if (my_hitboxID.attack == AT_NSPECIAL) {

    my_hitboxID.hitbox_timer = 0;

    
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 ) {

    my_hitboxID.hitbox_timer = -10;
   my_hitboxID.hsp *= 2
    
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 2 ) {

spawn_hit_fx(my_hitboxID.x,my_hitboxID.y,SC)
my_hitboxID.spr_dir *= -1
my_hitboxID.hsp /= 2
my_hitboxID.vsp = 12
my_hitboxID.hit_priority = 0
my_hitboxID.grav = 1
//    my_hitboxID.hitbox_timer = 0;
//     my_hitboxID.extra_hitpause = 45;  
//     
//my_hitboxID.x = x
//my_hitboxID.y = y

}
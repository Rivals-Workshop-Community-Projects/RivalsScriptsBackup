
image_index += .5;

if(state_timer >= 8){
    pseudo_hsp = 0;
    pseudo_vsp = 0;
}

x += pseudo_hsp;
y += pseudo_vsp;

with(player_id){
    var window_timer_var = get_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH) - 1;
}

if((player_id.state != PS_ATTACK_AIR && player_id.state != PS_ATTACK_GROUND) || ((player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.attack != AT_USPECIAL) || 
((player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.attack == AT_USPECIAL && player_id.window == 4 && player_id.window_timer == window_timer_var)){
    instance_destroy();
    exit;
}

state_timer++;
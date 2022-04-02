//hitbox_init
smoketimer_max = 2;
smoketimer = smoketimer_max;
num_fc = 0;
reflected = false;
is_kirby = 0;
is_spin = false;
reset = false;
bounced = 0;
grabbed = 0;
is_bunt = player_id.fc_bunt;
grounds = 2;
set_transcendent = false;

// walls = 2;
// grounds = 2;

 // Figure out what sprite I am
if( sprite_index == sprite_get("firecracker_single") || sprite_index == sprite_get("firecracker_single_spin") || sprite_index == sprite_get("firecracker_single_bunt") ||
sprite_index == sprite_get("firecracker_single_nooutline") || sprite_index == sprite_get("firecracker_single_spin_nooutline") || sprite_index == sprite_get("firecracker_single_bunt_nooutline"))
{
    num_fc = 1;
}
else if(sprite_index == sprite_get("firecracker_double") || sprite_index == sprite_get("firecracker_double_spin") || sprite_index == sprite_get("firecracker_double_bunt") ||
sprite_index == sprite_get("firecracker_double_nooutline") || sprite_index == sprite_get("firecracker_double_spin_nooutline") || sprite_index == sprite_get("firecracker_double_bunt_nooutline"))
{
    num_fc = 2;
}
else if(sprite_index == sprite_get("firecracker_triple") || sprite_index == sprite_get("firecracker_triple_spin") || sprite_index == sprite_get("firecracker_triple_bunt") ||
sprite_index == sprite_get("firecracker_triple_nooutline") || sprite_index == sprite_get("firecracker_triple_spin_nooutline") || sprite_index == sprite_get("firecracker_triple_bunt_nooutline"))
{
    num_fc = 3;
}

if(sprite_index == sprite_get("firecracker_single_spin") || sprite_index == sprite_get("firecracker_double_spin") || sprite_index == sprite_get("firecracker_triple_spin") ||
sprite_index == sprite_get("firecracker_single_spin_nooutline") || sprite_index == sprite_get("firecracker_double_spin_nooutline") || sprite_index == sprite_get("firecracker_triple_spin_nooutline"))
{
    is_spin = true;
    with(player_id) sound_play( sound_get( "tenru_fc_spin" ) );
} 

if(is_bunt) 
{
    through_platforms = 9999999;
}

if(is_bunt && num_fc > 0) with(player_id) sound_play( sound_get( "tenru_fc_bunt" ) );


lastPlayer = player_id;
currentPlayer = player_id;

// if(attack == AT_NSPECIAL && hbox_num == 1)
// {
//     parrybox = create_hitbox(AT_NSPECIAL,3,floor(x),floor(y));
// }

// Note - I really wish I knew this was a thing before
// I set up this complex ID storage system to track hitboxes
// And store their variables within Tenru himself
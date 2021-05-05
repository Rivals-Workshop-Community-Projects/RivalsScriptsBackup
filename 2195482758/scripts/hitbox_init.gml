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

 // Figure out what sprite I am
if(sprite_index == sprite_get("firecracker_single") || sprite_index == sprite_get("firecracker_single_spin"))
{
    num_fc = 1;
}
else if(sprite_index == sprite_get("firecracker_double") || sprite_index == sprite_get("firecracker_double_spin"))
{
    num_fc = 2;
}
else if(sprite_index == sprite_get("firecracker_triple") || sprite_index == sprite_get("firecracker_triple_spin"))
{
    num_fc = 3;
}

if(sprite_index == sprite_get("firecracker_single_spin") || sprite_index == sprite_get("firecracker_double_spin") || sprite_index == sprite_get("firecracker_triple_spin"))
{
    is_spin = true;
    
} else through_platforms = 9999;

lastPlayer = player_id;
currentPlayer = player_id;

// Note - I really wish I knew this was a thing before
// I set up this complex ID storage system to track hitboxes
// And store their variables within Tenru himself
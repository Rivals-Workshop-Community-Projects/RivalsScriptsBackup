// hitbox_init is a script that is called when one of the character’s hitboxes is created. Always from the prespective of the hitbox.

if attack == AT_NSPECIAL && hbox_num = 2{
    player_id.liveWireBox = self;
}


if attack == AT_EXTRA_3 && hbox_num < 6{
    hitLocked = 0;
    if instance_exists(player_id.globalItemSolver.globalItemOut[(hbox_num-1)+(orig_player*6)]){
        player_id = player_id.globalItemSolver.globalItemOut[(hbox_num-1)+(orig_player*6)].player_id;
        player = player_id.globalItemSolver.globalItemOut[(hbox_num-1)+(orig_player*6)].player_id.player;
        var hitboxID = self;
        with player_id.globalItemSolver.globalItemOut[(hbox_num-1)+(orig_player*6)]{
            assignedHitbox = hitboxID;
        	//print_debug(player_id.globalItemSolver.globalItemOut[(h-1)+(hitboxID.orig_player*4)]);
        }
    }
}

//hitbox init

if (attack == AT_NSPECIAL && hbox_num == 1){ //targetting leaves
    targetPlayer = noone; // this is the variable that holds the enemy that will be targetted
    with oPlayer{ // this loops through every oPlayer instance (an instance is each separate player, including forsburn clones) and runs the code inside from the perspective of that instance
        if(get_player_team(player) != get_player_team(other.player)){ // this makes it so that it doesn't run this code for you or your teammates, you don't want it to target your team
            distanceToLeaf = point_distance(other.x, other.y, x, y); // this saves the distance from the projectile to the enemy within 
            if(other.targetPlayer == noone || distanceToLeaf < other.targetPlayer.distanceToLeaf){ // checks if anyone is being targetted or if this player is closer to you than the currently targetted player is
                other.targetPlayer = id; // if either of the above conditions are met, make this player the target
            }
        }
    }
    if(spr_dir == -1){ // if the player is facing the left
        proj_angle = 135; // rotate the projectile so that it is facing left (proj_angle and spr_dir are built in hitbox variables)
        spr_dir = 1; // make it so that it is facing right (the rotation keeps it facing left)
    }else{
        proj_angle = 45; // set the rotation to 0
        spr_dir = 1; // set the direction to right
    }
    //follower vfx
    leafFollowerVFX = hit_fx_create(sprite_get("batit_nspecial_particle_fx"), 15);
} else if (attack == AT_DSPECIAL_AIR){
    if(hbox_num == 1){
        spawnSplash = false;
        spawnEffect = false;
    }
}
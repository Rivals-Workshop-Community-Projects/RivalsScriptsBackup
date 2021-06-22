//hitbox_update

if(was_parried and attack == AT_NSPECIAL){
    can_hit_self = false;
    player_id.rock_proj.owner = player;
    was_parried = false;
}
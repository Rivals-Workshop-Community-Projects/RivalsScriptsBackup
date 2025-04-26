//ladder platform

state_timer++;

if (!instance_exists(player_id.ladder_obj)){
    instance_destroy(self);
}
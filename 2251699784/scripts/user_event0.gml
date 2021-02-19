//when collision check what hitbox needs to deal damage
with(asset_get("pHitBox")){
    other.other_priority = 0;
    if(place_meeting(x, y, other) && player != 5){
        if(hit_priority >= other.other_priority){
            other.active_hbox = id;
            other.other_priority = hit_priority;
        }
    }
}

if(instance_exists(active_hbox)){
    with(active_hbox){
        //make sure the same hitbox group cannot hit multiple times
        if(other.prev_hitbox_group != hbox_group){

            //store hitbox group id
            other.prev_hitbox_group = hbox_group;
            
            //handle projectiles
            if(type == 2 && !enemies) destroyed = true;

            //handle melee attacks
            else if(type != 2){
                //apply hitpause to player
                player_id.has_hit = true;
                player_id.hitstop = hitpause;
                player_id.hitpause = true;

                //set correct speed after hitstun is over
                player_id.old_hsp = player_id.hsp;
                player_id.old_vsp = player_id.vsp;
            }

            //play hit fx and sound effect
            sound_play(sound_effect);
            spawn_hit_fx(x, y, hit_effect);

            //deal damage
            other.hp -= damage;

            knightCompat();
        }
    }
}
//reset hitbox group if the current active hitbox has finished
else{
    prev_hitbox_group = 1000;
}

//code lifted straight from The Knight lol
#define knightCompat(){
    if (attack == AT_JAB || attack == AT_DATTACK || attack == AT_FTILT || attack == AT_DTILT || attack == AT_UTILT || attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG || attack == AT_FAIR || attack == AT_BAIR || attack == AT_DAIR || attack == AT_UAIR|| attack == AT_NAIR ){
        with(player_id){
            if(url == 2105527362){
                if(soul_points < 100)
                {
                    old_soul_points = soul_points

                    soul_points += round(other.damage);

                    if (soul_points > 100) soul_points = 100;

                    var i;
                    for (i = 25; i < 125; i += 25)
                    {
                        if (old_soul_points < i && soul_points >= i) soul_full_play = 0;
                    }
                }
            }
        }
    }
}
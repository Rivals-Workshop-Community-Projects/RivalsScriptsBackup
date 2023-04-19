//parry.gml



//are we parrying our own attack?
if (enemy_hitboxID.orig_player == player) {
    //make fspecial reflect
    if (enemy_hitboxID.attack == AT_FSPECIAL) {
        enemy_hitboxID.hitbox_timer = 0; //extend the projectile lifetime so that it can reach plusle
        enemy_hitboxID.image_index = 0;
    }
    
    //make fspecial2 article reflect
    else if (enemy_hitboxID.attack == AT_FSPECIAL_2 && instance_exists(enemy_hitboxID.spawned_by_article_id)) {
        with (enemy_hitboxID.spawned_by_article_id) {
            //mark the article as being 'un-parried'
            was_parried = false;
            trigger_got_parried = true;
            parried_by_player = other;
            //extend the article's lifetime 
            max_exist_timer += 150 - (max_exist_timer - exist_timer);
        }
    }
}


//otherwise, if the teammate is nearby and grounded, share invulnerability frames with them
else if (!custom_clone && instance_exists(teammate_player_id)) {
    with (teammate_player_id) {
        if (!free && abs(x - other.x) <= 100 && abs(y - other.y) <= 10) {
            invincible = max(invincible, other.invincible);
            invince_time = max(invince_time, other.invince_time);
        }
    }
}
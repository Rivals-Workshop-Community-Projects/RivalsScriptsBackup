//hitbox_update

if(attack == AT_JAB && hbox_num == 3){
    player_id.geyser_exists = true
    if(free && player_id.lockon_id != noone){
        player_id.geyser_exists = false
        with(player_id){
            if(has_hit_player && geyser_exists == false){
                var geyser_1 = create_hitbox(AT_JAB, 3, x + 66*spr_dir, y - 18)
    			var geyser_2 = create_hitbox(AT_JAB, 3, x - 30*spr_dir, y - 18)
    			lockon_id = noone
    			geyser_1.spr_dir *= -1
    			geyser_exists = true
            }
        }
        instance_destroy();
    }
}

if(attack == AT_FSPECIAL && hbox_num == 3){
    if(instance_exists(player_id.sawblade)){
        x = player_id.sawblade.x
        y = player_id.sawblade.y
    }
}
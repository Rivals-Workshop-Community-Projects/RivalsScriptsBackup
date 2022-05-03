if(attack == AT_FSPECIAL)
{
    switch(hbox_num)
    {
        case 1:
            if (get_gameplay_time() % 3 == 0){
                spawn_hit_fx(x-(8*spr_dir), y, clubFX);
            }
            break;
        case 2:
            with(pHitBox)
            {
                if(player_id != other.player_id && hit_priority != 0 && proj_break == 0 && collision_circle(other.x,other.y,30,id,true,false))
                    other.destroyed = true;
            }
            if (get_gameplay_time() % 4 == 0){
                spawn_hit_fx(x, y, spadeFX);
            }
            if(hitbox_timer % 6 == 0)
                create_hitbox(AT_FSPECIAL, 3, x, y);
            break;
        case 4:
            through_platforms = 999;
            if(hitbox_timer == 5) { grounds = 0; collision_sprite = sprite_index; }
            if(!free) {
                destroyed = true;
                sound_play(asset_get("sfx_icehit_weak2"),false,noone,0.5,1.25);
            }
            break;
        case 5:
            through_platforms = 999;
            if(hitbox_timer == 5) { grounds = 0; collision_sprite = sprite_index; }
            if(!free) {
                destroyed = true;
                sound_play(asset_get("sfx_icehit_weak2"),false,noone,0.5,1.25);
            }
            break;
        case 6:
            through_platforms = 999;
            
            if (get_gameplay_time() % 3 == 0){
                spawn_hit_fx(x-(8*spr_dir), y, heartFX);
            }
            
            if(!free || was_parried)
                destroyed = true;
            if(!variable_instance_exists(id,"tempTarget"))
            {
                tempTarget = noone;
                tempAngle = 0;
            }
            //find player nearby >:)
            with(oPlayer)
            {
                if(point_distance(x,y-40, other.x, other.y) < 500 && other.orig_player != player)
                    other.tempTarget = id;
            }
            if(tempTarget != noone)
            {
                tempAngle = abs(darccos((x-tempTarget.x)/point_distance(x,y,tempTarget.x,tempTarget.y))-180*(spr_dir?1:0));
                with(tempTarget)
                {
                    if(point_distance(x,y-40, other.x, other.y) > 500 || abs(other.tempAngle) > 90)
                    {
                        other.tempTarget = noone;
                        break;
                    }
                    with(other)
                        proj_angle = (point_direction(x,y,tempTarget.x,tempTarget.y-40));
                }
            }
                hsp += lengthdir_x(.6, proj_angle)*(tempTarget != noone? 1 : spr_dir);
                vsp += lengthdir_y(.6, proj_angle)*(tempTarget != noone? 1 : spr_dir);
                
            if(tempTarget != noone) 
            {
                proj_angle = (point_direction(x,y,x+hsp,y+vsp));
                if(spr_dir == -1) proj_angle -= 180;
            }

            hsp = clamp(hsp, -9, 9);
            vsp = clamp(vsp, -9, 9);
            break;
    }

    if(type == 2 && (x < -50 || x > room_width + 50))
        destroyed = true;

    //player_id.move_cooldown[AT_FSPECIAL] = 4;
}
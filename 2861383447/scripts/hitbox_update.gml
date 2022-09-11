//eee


if (attack == 46){
    if (type = 2){

        if (hitbox_timer == 1){


            with (player_id){
                if (evidence[evidence_slot][0] != undefined){
                    other.evidence = evidence[evidence_slot][0];

                    other.evidence_index = evidence[evidence_slot][3];

                    evidence_list[evidence[evidence_slot][1]][other.evidence_index][@1] = 0;

                    other.evidence_type = evidence[evidence_slot][1];

                    evidence[evidence_slot, 0] = undefined;
                    evidence[evidence_slot, 1] = undefined;
                    evidence[evidence_slot, 2] = undefined;
                    evidence[evidence_slot, 3] = undefined;
                }
            }

            if (evidence == 6){
                sound_play(sound_get("galaga"));
                sprite_index = sprite_get("galaga");
            }
            else
            {
                hsp = 7 * spr_dir;
                vsp = -10;
                
            }

        }
        image_index = evidence;

        if (evidence == 6){


            if (galaga_lockout == 0 && hit_count < 2){
                for(i = 0; i < 20; i++){
                    can_hit[i] = true;
                }
            }else
            {
                galaga_lockout--;
            }


            enemies = 1;

            if (hitbox_timer > 20 && hitbox_timer < 20 + 39){
                proj_angle += 10 * spr_dir;
            }

            hsp = lengthdir_x(8 * spr_dir, proj_angle);
            vsp = lengthdir_y(8 * spr_dir, proj_angle);

            if (hitbox_timer == length - 1){
                sound_stop(sound_get("galaga"));
            }


        }else 
        {
            proj_angle -= 20 * spr_dir;
            vsp += 0.5;

            if (instance_place( x, y, asset_get("par_block"))){
                destroyed = true;
            }
        }

        
    }


}

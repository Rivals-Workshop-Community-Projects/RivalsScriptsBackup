

if (orig_player != player_id.player) exit;


switch (attack){


case AT_JAB:
case AT_NAIR:

    small_sprites = 0;

    if (hbox_num == 2){

        if (hitbox_timer > 6 && image_index < 3){
            image_index = 3;
        }

        if (hitbox_timer == length-1 || destroyed == true){
            var tempJab = spawn_hit_fx(x, y, player_id.cheeseBulletEnd);
            tempJab.spr_dir = spr_dir;
            tempJab.draw_angle = get_gameplay_time() % 360;
        }
    }

    if (hbox_num == 3){

        if (hitbox_timer > 11){

            hsp = (10 + (5 * was_parried)) * spr_dir;

            if (image_index < 3){
                image_index = 3;
            }
        }

        if (hitbox_timer % 7 == 0){
            CreateAfterimage();
        }

        if (hitbox_timer == length-1 || destroyed == true){
            var tempDestroy = spawn_hit_fx(x, y, player_id.cheeseBulletEnd);
            tempDestroy.spr_dir = spr_dir;
            tempDestroy.draw_angle = proj_angle;
        }

        if (has_hit){
            var cheeseBounce = create_hitbox(AT_JAB, 4, x, y);
            cheeseBounce.spr_dir = spr_dir;
            cheeseBounce.draw_xscale = draw_xscale;
            destroyed = true;
        }
    }

    if (hbox_num == 4){
        proj_angle = (hitbox_timer * 12) * spr_dir;
    }
break;

case AT_BAIR:

    draw_xscale = spr_dir;

    if (hbox_num == 2 && (!free || destroyed == true)){
        var tempBair = spawn_hit_fx(x, y, player_id.bairDestroy);
        tempBair.spr_dir = spr_dir;
        tempBair.draw_xscale = draw_xscale;
        destroyed_next = true;
    }

break;

case AT_DSTRONG:

    if (hbox_num == 1){

        //there is a bug with strong_charge. Fix that sometime. The issue comes from doing another strong after this one.
        if (player_id.hitpause == true && player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_DSTRONG && has_rune("B")){
            in_hitpause = true;
        } else {
            in_hitpause = false;
        }

        if (instance_exists(player_id.hit_player_obj) && player_id.hit_player_obj.last_attack == AT_DSTRONG && player_id.hit_player_obj.last_hbox_num == 4 && has_rune("B")){
            
            player_id.hit_player_obj.x = x;
            player_id.hit_player_obj.y = y + round(player_id.hit_player_obj.char_height/2);
            player_id.fall_through = true;
        }

        //Ground Explosion
        if (!free){
            var tempDstrong = spawn_hit_fx(x, y, player_id.dynamiteBoomGround);
            tempDstrong.spr_dir = spr_dir;
            tempDstrong.draw_xscale = draw_xscale;

            var groundBoom = create_hitbox(AT_DSTRONG, 2, x, y - 20);
            groundBoom.player = player;
            sound_play(sound_get("sfx_explosion"));

            destroyed_next = true;
        }

        //Air Explosion
        if (free && ((hitbox_timer == length - 1 && free) || (place_meeting(x, y, pHurtBox) && instance_place(x, y, pHurtBox).player != player && !has_rune("B")) && !getting_bashed || destroyed == true)){
            var tempDstrong = spawn_hit_fx(x, y + 10, player_id.uairExplosion);
            tempDstrong.spr_dir = spr_dir;
            tempDstrong.draw_xscale = draw_xscale;

            var airBoom = create_hitbox(AT_DSTRONG, 3, x + 2 * spr_dir, y);
            airBoom.player = player;
            sound_play(sound_get("sfx_explosion"));

            destroyed_next = true;
        }
    }
    
break;

case AT_USPECIAL:

    if (hbox_num == 1){

        small_sprites = false;

        if (!free){
            var tempUspecial = spawn_hit_fx(x + 1 * spr_dir, y, player_id.crateExplosion);
            tempUspecial.spr_dir = spr_dir;
            tempUspecial.draw_xscale = draw_xscale;

            var groundBoom = create_hitbox(AT_USPECIAL, 3, x, y + 2);
            groundBoom.player = player;
            sound_play(sound_get("sfx_explosion"));

            destroyed_next = true;
        }

        if (free && ((hitbox_timer == length - 1 && free) || (place_meeting(x, y, pHurtBox) && instance_place(x, y, pHurtBox).player != player && !getting_bashed) || destroyed == true)){
            var tempUspecialBoom = spawn_hit_fx(floor(x + hsp), floor(y + vsp), player_id.crateExplosion);
            tempUspecialBoom.spr_dir = spr_dir;
            tempUspecialBoom.draw_xscale = draw_xscale;

            var airBoom = create_hitbox(AT_USPECIAL, 3, floor(x + hsp + 2 * spr_dir), floor(y + vsp));
            airBoom.player = player;
            airBoom.num_bounces = 100;
            sound_play(sound_get("sfx_explosion"));

            destroyed_next = true;
        }

        if (hitbox_timer % 6 == 0 || hitbox_timer == 1){
            CreateAfterimage();
        }

    }

    if (hbox_num == 2 || hbox_num == 3){
        if (hitbox_timer == length){

            var bounceMax = 3 + (has_rune("F") * 17)

            //Right explosion
            if (move_dir != -1 && num_bounces < bounceMax && (place_meeting(x + 51, y + 5, asset_get("par_block")) || place_meeting(x + 51, y + 5, asset_get("par_jumpthrough")))){
                var tempRight = spawn_hit_fx(x + 34, y + 19, player_id.rocketBoomGround);
                tempRight.spr_dir = spr_dir;
                tempRight.draw_xscale = draw_xscale;

                var groundBoomRight = create_hitbox(AT_USPECIAL, 2, x + 34, y);
                groundBoomRight.player = player;
                groundBoomRight.move_dir = 1;
                groundBoomRight.num_bounces = num_bounces + 1;
                sound_play(asset_get("sfx_ell_dspecial_explosion_2"));

                destroyed_next = true;
            }

            //Left explosion
            if (move_dir != 1 && num_bounces < bounceMax && (place_meeting(x - 51, y + 5, asset_get("par_block")) || place_meeting(x - 51, y + 5, asset_get("par_jumpthrough")))){
                var tempRight = spawn_hit_fx(x - 34, y + 19, player_id.rocketBoomGround);
                tempRight.spr_dir = spr_dir;
                tempRight.draw_xscale = draw_xscale;

                var groundBoomLeft = create_hitbox(AT_USPECIAL, 2, x - 34, y);
                groundBoomLeft.player = player;
                groundBoomLeft.move_dir = -1;
                groundBoomLeft.num_bounces = num_bounces + 1;
                sound_play(asset_get("sfx_ell_dspecial_explosion_2"));

                destroyed_next = true;
            }
        }
    }

break;

}


#define CreateAfterimage()
{
//if (afterimage_colour = 1) var _color = $FF0000
    var _color = $0080FF
    player_id.afterimage_array[array_length_1d(player_id.afterimage_array)] = {smallSprites:small_sprites, x:x, y:y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:proj_angle, col:_color, timer:0, timerMax:20};
}
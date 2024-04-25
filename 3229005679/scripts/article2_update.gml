if free then vsp = min(vsp + article_gravity, article_max_fall_speed);
state_timer++;
//image_index = state_timer * article_anim_speed;
can_be_hit[player_id.player] = 2;
player_id.move_cooldown[AT_DSPECIAL] = 300 - (has_rune("M") * 298);


if (state == "crate"){
    sprite_index = sprite_get("crate");

    if (y + vsp >= player_id.vigiCowTargetY){
        ignores_walls = false;
    }

    if (!free){
        state = "cow";
        state_timer = 0;
        hitstop = 3;

        image_xscale = 0;
        image_yscale = 0;

        vsp = -10;
        hsp = 2 * spr_dir;
        article_gravity = 0.25;
        free = true;
        

        spawn_hit_fx(x, y - 25, player_id.crateExplosion);
        sound_play(sound_get("sfx_explosion"));
        sound_play(sound_get("Cow"));
        shake_camera(5, 6);
        create_hitbox(AT_DSPECIAL, 1, x, y - 24);

        for (var i = 0; i < 10; i++){
            var flyingPlank = spawn_hit_fx(x, y - 25, player_id.plankFlying);
            flyingPlank.hsp = 3 - random_func(i, 7, true);
            flyingPlank.vsp = -10 - random_func(i+1, 6, true);
           
        }
    } else if (state_timer % 5 == 0){
        CreateAfterimage();
    }

}

if (state == "cow"){
    sprite_index = sprite_get("cow");

    if (hitstop == 0){
        if (image_xscale < 2){
            image_xscale += 0.5;
            image_yscale += 0.5;
        }

        if (floor(image_index) == 0){
            image_index = 0;
        } else {
            image_index += article_anim_speed;
        }
    }

    


    if (!free && bounceCount != bounceMax){
        image_index = 1.8;
        vsp = prev_vsp * -0.75
        hsp = hsp * 0.75
        hitstop = 3;
        free = true;
        bounceCount += 1;

        sound_play(sound_get("vigicowstomp"));
        spawn_hit_fx(x, y + 25, player_id.stompVFX);
        shake_camera(5, 6);

        var cowHitter = create_hitbox(AT_DSPECIAL, 2, x - 5 * spr_dir, y - 20);
        if (crateParriedPlayer != player_id.player){
            cowHitter.player = crateParriedPlayer;
        }
    }

    if (bounceCount == bounceMax){

        ignores_walls = true;
        hsp = 0;

    } else {

        //Find nearest player
        var nearest_player = noone;
        var nearest_distance = -1;
        with (oPlayer) {
          if (id != other.player_id && state != PS_DEAD && state != PS_RESPAWN) {
            if (nearest_player == noone || point_distance(x, y, other.x, other.y) < nearest_distance) {
                nearest_player = id;
                nearest_distance = point_distance(x, y, other.x, other.y);
            } 
          }
        } 
        
        if (position_meeting(x + hsp, y + abs(vsp), asset_get("par_jumpthrough")) && instance_exists(nearest_player) && nearest_player.col_jumpthrough == noone){  
            ignores_walls = true;

        } else {

            ignores_walls = false;
        }
        print(hitstop)
    }
}


var newArray = 0;
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    if (++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
}
afterimage_array = newArray;


prev_vsp = vsp;
if (y >= get_stage_data(SD_BOTTOM_BLASTZONE_Y)){
    instance_destroy();
}



#define CreateAfterimage()
{
//if (afterimage_colour = 1) var _color = $FF0000
    var _color = $FFFFFF
    afterimage_array[array_length_1d(afterimage_array)] = {smallSprites:small_sprites, x:x, y:y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:image_angle, col:_color, timer:0, timerMax:10};
}
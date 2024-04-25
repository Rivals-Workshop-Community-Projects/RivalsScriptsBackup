if free then vsp = min(vsp + article_gravity, article_max_fall_speed);
state_timer++;
image_index = state_timer * article_anim_speed;
depth = -6;
can_be_hit[player_id.player] = 2;

if (state == "idle"){

    sprite_index = sprite_get("johnCheese");

    if (state_timer % 6 == 0) then CreateAfterimage();

    if (instance_exists(ghostBox)){
        ghostBox.x = x;
        ghostBox.y = y;
    }

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

    if (instance_exists(nearest_player)){
        ghostTarget = nearest_player;
    } else {
        ghostTarget = player_id;
    }

    var projectileSpeed = 3 + (has_rune("I") * 1.5);
    var targetAngle = point_direction(x, y, ghostTarget.x, ghostTarget.y - round(ghostTarget.char_height/2));

    if (sign(x - ghostTarget.x) != 0){
	    spr_dir = sign(x - ghostTarget.x) * -1;
	}

    hsp = lengthdir_x(projectileSpeed, targetAngle);
    vsp = lengthdir_y(projectileSpeed, targetAngle);

    if (place_meeting(x, y, ghostTarget)){
        ghostBox = create_hitbox(AT_NSPECIAL, 1, x, y);
    }
    
}

if (state == "death"){
    sprite_index = sprite_get("johnDeath");
    article_gravity = 0.25;
    article_max_fall_speed = 9;

    if (state_timer % 6 == 0){
        var rngX = random_func(0, 51, true)
        var rngY = random_func(1, 51, true)
        spawn_hit_fx(x + (rngX - 25), y + (rngY - 25), player_id.ghostCloud);
    }

    if (state_timer == 300){
        instance_destroy();
        exit;
    }
}

if (state == "fade"){

    hsp = 0;
    vsp = 0;

    image_alpha = ease_linear(1, 0, state_timer, 60);

    if (state_timer == 300 - (has_rune("M") * 298)){
        instance_destroy();
        exit;
    }
}


var newArray = 0;
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    if (++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
}
afterimage_array = newArray;

#define CreateAfterimage()
{
//if (afterimage_colour = 1) var _color = $FF0000
    var _color = $FFFFFF
    afterimage_array[array_length_1d(afterimage_array)] = {smallSprites:small_sprites, x:x, y:y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:0, col:_color, timer:0, timerMax:12};
}
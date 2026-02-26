if free then vsp = min(vsp + article_gravity, article_max_fall_speed);
state_timer++;
life_timer++;
can_be_hit[player_id.player] = 2;

if (life_timer % 8 == 0){
    CreateAfterimage();
}



if (!instance_exists(TVbox)){
    TVbox = create_hitbox(AT_DSPECIAL_2, 1, round((x + hsp) + (3 * spr_dir)), round((y + vsp ) - 58))
} else {
    TVbox.length += 1;
    TVbox.x = round((x + hsp) + (3 * spr_dir));
    TVbox.y = round((y + vsp) - 58);
}

if (state == "idle"){
    article_anim_speed = 0.33;

    sprite_index = sprite_get("pizzahead_dspecial2_TV_frame");
    
    image_index = state_timer * article_anim_speed;
    hsp = 2.5 * spr_dir;
    
    if (!free){
        vsp = prev_vsp * -1
        y -= 10;
        free = true;

        sound_play(sound_get("sfx_groundpound"));
        spawn_hit_fx(x, y + 15, player_id.TV_stompVFX);
        shake_camera(5, 6);
        
        state = "bounce";
        state_timer = 0;

        if (instance_exists(TVbox)){
            for (var i = 0; i < 20; i++) TVbox.can_hit[i] = true;
        }
    }
}

if (state == "bounce"){
    article_anim_speed = 0.4;

    sprite_index = sprite_get("pizzahead_dspecial2_TV_bounce_frame");
    
    image_index = state_timer * article_anim_speed;

    if (image_index > image_number){
        state = "idle";
        state_timer = 0;
    }
}

if (x < view_get_xview()){
    x = view_get_xview() + 10;
    hsp = abs(hsp) * 1;
    spr_dir = 1;
}

if (x > view_get_xview() + view_get_wview()){
    x = (view_get_xview() + view_get_wview()) - 10;
    hsp = abs(hsp) * -1;
    spr_dir *= -1;
}

if (!hitpause){
    var newArray = 0;
    for (var i = 0; i < array_length_1d(afterimage_array); ++i)
    {
        var obj = afterimage_array[i];
        if (++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
    }
    afterimage_array = newArray;
}



prev_vsp = vsp;
if (y >= get_stage_data(SD_BOTTOM_BLASTZONE_Y)){
    instance_destroy();
    exit;
}

if (life_timer == 600 && !has_rune("M")){
    var debris1 = spawn_hit_fx(x, y - 60, player_id.TV_debrisVFX);
	debris1.originalImage = 0;
	debris1.hsp = 5;
	debris1.vsp = -7.5;

	var debris2 = spawn_hit_fx(x, y - 60, player_id.TV_debrisVFX);
	debris2.originalImage = 1;
	debris2.hsp = -5;
	debris2.vsp = -7.5;

	var debris3 = spawn_hit_fx(x, y - 80, player_id.TV_debrisVFX);
	debris3.originalImage = 2;
	debris3.hsp = 0;
	debris3.vsp = -7.5;

	if (instance_exists(TVbox)){
		instance_destroy(TVbox);
	}
    
    instance_destroy();
    exit;
}

#define CreateAfterimage()
{
//if (afterimage_colour = 1) var _color = $FF0000
    var _color = $FFFFFF
    afterimage_array[array_length_1d(afterimage_array)] = {smallSprites:small_sprites, x:x, y:y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:image_angle, col:_color, timer:0, timerMax:16};
}
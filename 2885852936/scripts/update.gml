if (introTimer2 < 20) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 20) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.

/*   with(asset_get("obj_article2")){
        if (player_id == other.id){
            vsp = -5;
            hsp = -5;
        }
    }
*/

    //Fix stupid pratfall-->walljump hurtbox bug :(

if  move_cooldown[AT_DSPECIAL] = 10 {
if !instance_exists(pig){
	sound_play(sound_get( "ring" ));
}
}
pig_hit = 0; 

if (special_pressed && down_down && !instance_exists(pig)) {
    if  (move_cooldown[AT_DSPECIAL] > 10) {
        sound_play(sound_get( "error" ));
    }

}

if (state == PS_WALL_JUMP){
	hurtboxID.sprite_index = hurtbox_spr;
}



//Restore airdodge if you leave pratfall

//if (state != PS_PRATFALL){
//    has_airdodge = true;
//}
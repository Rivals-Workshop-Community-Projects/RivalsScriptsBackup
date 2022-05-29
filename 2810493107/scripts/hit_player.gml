//hitbox_update

if ((my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.type == 1)) {
    if (!hit_player_obj.TRICKROOM_STATE) {
        sound_play(asset_get("sfx_ori_ustrong_charge"))
    }
    hit_player_obj.TRICKROOM_STATE = true
    hit_player_obj.TRICKROOM_STATE_ID = id
    hit_player_obj.trickroom_timer = 420
}

if my_hitboxID.attack == AT_UAIR and my_hitboxID.hbox_num < 1 //What attack it is and what hitbox number it was.
{
    //lerp (p1 , p2, how much should it change(experiment)
    hit_player_obj.x = lerp(hit_player_obj.x,x+(spr_dir*10),0.2) // x+(spr_dir*10) means its ten pixels in front.
    hit_player_obj.y = lerp(hit_player_obj.y,y,0.2) // y will try to adjust their position close to yours.
}
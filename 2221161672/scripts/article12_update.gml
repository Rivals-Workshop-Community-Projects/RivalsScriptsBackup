var touch = instance_place(x, y, oPlayer);
if touch != noone {
sound_play( asset_get("mfx_coin"));
with oPlayer {//oPlayer
with ( obj_stage_article ) {
		if ( get_article_script( id ) == 96 ) {
		sound_play( asset_get("mfx_coin"));
		keyb = true
		}
	}

}
Delete = true
}


if (Delete == true){
instance_destroy()
}
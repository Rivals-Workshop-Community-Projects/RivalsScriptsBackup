//hitbox_update

if (attack==AT_USPECIAL){
	if (hbox_num == 1){
		hsp = ease_cubeOut( 12, 0, hitbox_timer, length )*spr_dir
		image_index = round(ease_sineIn( 0, 2, hitbox_timer, length ))
	}
}
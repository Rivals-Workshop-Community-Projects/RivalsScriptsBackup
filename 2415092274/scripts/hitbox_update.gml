//hitbox_update

if (attack==AT_USPECIAL){
	if (hbox_num == 1){
		hsp = ease_linear( 12, 1, hitbox_timer, length )*spr_dir
		image_index = round(ease_linear( 0, 2, hitbox_timer, length ))
	}
}
//ヒットボックスを出し続けると処理落ちするのでこれを使う
//1p以外のキャラを場外に
var touch = instance_place(x, y, oPlayer);
if touch != noone {
create_hitbox(AT_USTRONG, 1, x, y);
}
if (Delete == true){
instance_destroy()
}else{
	var anim_speed = 1;
	image_index = anim_speed;
}
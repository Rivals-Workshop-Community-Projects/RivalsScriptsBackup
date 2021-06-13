
var touch = instance_place(x, y, oPlayer);
if touch != noone {
end_match( touch.player );
}


if (Delete == true){
damage = false;
attack = false;
attacks = false;
anim_speed = 0
instance_destroy()
}else{
var anim_speed = 0.12;
image_index += anim_speed;
}


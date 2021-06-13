
var touch = instance_place(x, y, oPlayer);
if touch != noone {
	with ( obj_stage_article ) {
		if ( get_article_script( id ) == 14 ) {
		Astate = true
		}
	}
}



if (time1 == 100){
Delete = true
}else{
time1 +=1
}

if (Delete == true){
damage = false;
attack = false;
anim_speed = 0
instance_destroy()
}else{

}


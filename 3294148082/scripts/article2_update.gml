timer++
if state = "idle" {
sprite_index2 = player_id.sprite_index
image_index2 = player_id.image_index
spr_dir = player_id.spr_dir
x = player_id.x+xoffset
y = player_id.y

    
    
}
if state = "leaving" {
    if timer2 == 4 {
        	var _h = instance_create(0,0,"obj_article1");
	_h.articletype = "TPSquare"
	_h.state = "GOTOD"
	_h.d = self
        
    }
sprite_index2 = sprite_get("uspecial")
image_index2 = (clamp(timer2/4,0,6))
timer2++
if timer2 > 26 {
    instance_destroy()
}
}
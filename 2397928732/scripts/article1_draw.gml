if ("back" not in self){
	with obj_stage_article if num == 2 other.back = self;
}

var fx = self.temp_x + 100;
var fy = self.temp_y;
var bx = back.true_x;
var by = back.true_y;

var fh = 720;
var bh = fh * 0.8;

var ft = 128;
var bt = ft * 0.8;



draw_sprite_pos(spr_wall, 0,
	
	bx + bt,
	by + bh,
	
	bx - bt,
	by - bh,
	
	fx - ft,
	fy - fh,
	
	fx + ft,
	fy + fh,
	
	1);



fx = self.temp_x - 150;
bx = back.true_x - 50



draw_sprite_pos(spr_wall, 1,
	
	bx - bt,
	by - bh,
	
	bx + bt,
	by + bh,
	
	fx + ft,
	fy + fh,
	
	fx - ft,
	fy - fh,
	
	1);
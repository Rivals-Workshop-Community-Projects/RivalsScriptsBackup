var m = my_hitboxID
var nm = m.hbox_num;
if (m.attack == AT_FSPECIAL && nm == 1){
	m.can_hit[player] = false
}
if (m.attack == AT_NSPECIAL && nm == 1){
	if(!was_parried){
		m.hitbox_timer = 0;
		var a = point_direction(m.x, m.y, x, y-30);
		var dx = x - m.x;
		var dy = (y-30) - m.y;
		
		var hhsp = sign(m.hsp)*20;
		var t = dx/hhsp;
		print(t)
		var delta = dy/t - m.grav*t/2
		print(delta)
		m.hsp = hhsp;
		m.vsp = delta
	}else{
		if(m.vsp > 0) m.vsp *= -1
	}
}
if !(m.attack == AT_JAB and (nm == 1 or nm == 2)) and !(attack == AT_NSPECIAL and nm == 1){
	lvl = 1; 
	fspecial_hud_timer = fspecial_hud_time;
}
gs[3] = false;
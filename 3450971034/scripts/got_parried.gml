//got_parried.gml
if (my_hitboxID.orig_player_id != self) exit;

true_dmg = my_hitboxID.damage * lerp(1, 1.6, strong_charge/60);

if (instance_exists(my_grab_id) && my_grab_id != noone) my_grab_id = noone;

if (my_hitboxID.attack == AT_NSPECIAL && instance_exists(my_hitboxID.ptooie_obj)) {
    var pt = my_hitboxID.ptooie_obj;
    
    pt.hsp *= -1;
    pt.was_reflected = true;
    pt.reflect_owner = hit_player_obj;
    if (pt.state == 0) {
        pt.state = 1;
        pt.state_timer = 0;
        window = 9;
        window_timer = 0;
    }
    else 
    {
        // spamton neo
        //pt.vsp = (pt.y - y + floor(char_height / 2)) + (-0.5) * (0.5) * power((90), 2);
        //pt.hsp = (pt.x - x) + (0.5) * (90);
        pt.vsp = ((y + floor(char_height / 2) - pt.y) / 40) - ((0.5 * 40) / 2);
        pt.hsp = ((x - pt.x) / 40);
        
        // vi = d/t - ((at) / 2)
        //SpamNeoStringPosYi = SpamNeoStringStartY + SpamNeoStringLineVsp * (i) - 0.5 * 0.3 * power((i), 2);
		//SpamNeoStringPosXi = SpamNeoStringStartX + SpamNeoStringLineHsp1 * (i);
    }
    
    /*if (!pt.free || pt.vsp < 3) pt.vsp = -3;
    else pt.vsp *= -1;*/
    pt.can_hit = array_create(20, true);
}

if (hit_player_obj.spider_plant_poison_owner == self) with (hit_player_obj) {
    spider_plant_poison_damage = 0;
    spider_plant_poison_timer = 0;
    spider_plant_poison_owner = noone;
    if (outline_color = other.poison_outline) {
        outline_color = [0, 0, 0];
        init_shader();
    }
}

if (outline_color == prev_outline && fspecial_charge >= fspecial_large_charge) {
    outline_color = [0, 0, 0];
    init_shader();
}
fspecial_charge = 0;

if (my_hitboxID.attack == AT_FSPECIAL && "cloud_obj" in my_hitboxID) {
	my_hitboxID.cloud_obj.destroyed = true;
}
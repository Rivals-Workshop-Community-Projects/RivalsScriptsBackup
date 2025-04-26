//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
    if attack == AT_FAIR or attack == AT_FTILT{
    	if  window == 2 and window_timer == 1 {
clonetimer -= 36
                if instance_exists(dimentio1){
var _b = create_hitbox(attack,1,dimentio1.x+(28*spr_dir),y-34)
_b.hsp = _b.hsp
_b.kb_scale = _b.kb_scale*0.66
_b.damage = _b.damage*0.66
        }
        
                if instance_exists(dimentio2){
var _b = create_hitbox(attack,1,dimentio2.x+(28*spr_dir),y-34)
_b.hsp = _b.hsp
_b.kb_scale = _b.kb_scale*0.66
_b.damage = _b.damage*0.66
        }
        
    }
    	
    }
    
        if attack == AT_DATTACK{
    	if  window == 2 and window_timer == 1 {
clonetimer -= 48
                if instance_exists(dimentio1){
var _b = create_hitbox(attack,1,dimentio1.x+(28*spr_dir),y-34)
_b.hsp = _b.hsp
_b.kb_scale = _b.kb_scale*0.66
_b.damage = _b.damage*0.66
var _b = create_hitbox(attack,2,dimentio1.x-(28*spr_dir),y-34)
_b.hsp = _b.hsp
_b.kb_scale = _b.kb_scale*0.66
_b.damage = _b.damage*0.66
        }
        
                if instance_exists(dimentio2){
var _b = create_hitbox(attack,1,dimentio2.x+(28*spr_dir),y-34)
_b.hsp = _b.hsp
_b.kb_scale = _b.kb_scale*0.66
_b.damage = _b.damage*0.66
var _b = create_hitbox(attack,2,dimentio2.x-(28*spr_dir),y-34)
_b.hsp = _b.hsp
_b.kb_scale = _b.kb_scale*0.66
_b.damage = _b.damage*0.66
        }
        
    }
    	
    }
    
if attack == AT_BAIR {
if window = 2 and window_timer = 1 {
clonetimer -= 48
        var _box = instance_create(x+(spr_dir*-48),y-36,"obj_article1");
        _box.articletype = "BoxSmall"
        if instance_exists(dimentio1){
        var _box = instance_create(dimentio1.x+(spr_dir*-48),dimentio1.y-36,"obj_article1");
        _box.articletype = "BoxSmall"
        _box.islesser = 1
        }
        
        if instance_exists(dimentio2){
        var _box = instance_create(dimentio2.x+(spr_dir*-48),dimentio2.y-36,"obj_article1");
        _box.articletype = "BoxSmall"
        _box.islesser = 1
        }
    	}
}

if attack == AT_DSPECIAL {
    move_cooldown[AT_DSPECIAL] = 120
    can_fast_fall = 0
    can_move = 0
}
if (attack == AT_DSPECIAL) and window = 2 {
	if window_timer = 1 {
clonetimer -= 110
		shot = 0 
	}
var _pcount = 0

with oPlayer{
	if get_player_stocks(player) != 0 {
	if (is_player_on( player ) ) {
_pcount += 1;
}
}
}
    with oPlayer {
	// --- [ ADDITION ] ----------------------------------------------------- //
	// This is hacky, but I added `y >= 0` which prevents targeting oPlayers
	// that are off the top of the screen, which includes Abyss AI.
	// ---------------------------------------------------------------------- //
	if get_player_stocks(player) != 0 and point_distance(other.x,other.y,x,y) < 480 and y >= 0 {
	// --- [ END OF ADDITION ] ---------------------------------------------- //
	//
	// ---------------------------------------------------------------------- //
        if !(self == other){
    with other {
    	if window_timer = 1 and shot = 0 {
        var _box = instance_create(other.x,other.y,"obj_article1");
        _box.articletype = "Box"
        if !instance_exists(dimentio1){
        shot = 1
        }
    	}
    	if _pcount < 4 {
    if instance_exists(dimentio1) {
    	
    	if window_timer = 5 {
        var _box = instance_create(other.x+(other.spr_dir*(40+random_func(0,40,1))),other.y,"obj_article1");
        _box.articletype = "Box"
    	}
    }
    	}
    
    	if _pcount < 3 {
    if instance_exists(dimentio2) {
    	
    	if window_timer = 10 {
        var _box = instance_create(other.x-(other.spr_dir*(40+random_func(0,40,1))),other.y,"obj_article1");
        _box.articletype = "Box"
    	}
    }
//    create_hitbox(AT_NSPECIAL,2,other.x,other.y)
    }
    }
        }
    }
    }
}


if attack == AT_FSPECIAL {
    move_cooldown[AT_FSPECIAL] = 40
    move_cooldown[AT_USPECIAL] = 50
    move_cooldown[AT_DSPECIAL] = 50
    move_cooldown[AT_NSPECIAL] = 50
    can_fast_fall = 0
    can_move = 0
    if window == 1 {blastcharge = 0}
    if window == 1 and window_timer == 2 {
    	
        	var _h = instance_create(x,y-100,"obj_article1");
	_h.articletype = "Magic"
    	if instance_exists(dimentio1) and instance_exists(dimentio2){
    	
        	var _h = instance_create(dimentio1.x,dimentio1.y-100,"obj_article1");
	_h.articletype = "Magic"
    		
        	var _h = instance_create(dimentio2.x,dimentio2.y-100,"obj_article1");
	_h.articletype = "Magic"
    	}
    	
    }
    if window == 2 {
    	if blastcharge = 0 {
    		
clonetimer -= 68
    	}
    	if !(instance_exists(dimentio1)){
    		if blastcharge == 32 {
		sound_play(sound_get("MAGICCHARGE2"))
        	var _h = instance_create(x+(42*spr_dir),y-84,"obj_article1");
	_h.articletype = "Magic"
    			
    		}
    		
    		if blastcharge == 78 {
		sound_play(sound_get("MAGICCHARGE2"))
        	var _h = instance_create(x+(-42*spr_dir),y-84,"obj_article1");
	_h.articletype = "Magic"
    			
    		}
    		
    	}
    blastcharge++
    if (blastcharge >= 30 and !special_down) or blastcharge > 124{
    	window_timer = 0
    	window = 3
    } 
    }
}

if attack == AT_USPECIAL or attack == AT_NSPECIAL{
	if window == 1 and window_timer = 9 {
		sound_play(sound_get("SNAP"))
	}
    if attack == AT_USPECIAL {
    move_cooldown[AT_USPECIAL] = 70
    move_cooldown[AT_NSPECIAL] = 70
    } else {
    move_cooldown[AT_USPECIAL] = 50
    move_cooldown[AT_NSPECIAL] = 50
 
    }
    can_fast_fall = 0
    can_move = 0
    if window == 1 and window_timer = 4{
    	tpx = x
    	tpy = y
        	var _h = instance_create(x,y-40,"obj_article1");
	_h.articletype = "TPSquare"
        	with obj_article2 {
		if player_id == other {
        	var _h = instance_create(x,y-40,"obj_article1");
	_h.articletype = "TPSquare"
		}
	}
    }
    if window == 2 {
    	if window_timer == 1 and attack == AT_USPECIAL {
    		
clonetimer -= 68
    	}
    if attack == AT_USPECIAL {
    	if instance_exists(dimentio1) and instance_exists(dimentio2){
    	var _d = right_down-left_down
    	if window_timer == 1 {
    	//x = x-(curplace*100)
    	}
    	if _d = -1 {
    		dimentio1.xoffset = 100
    		dimentio2.xoffset = 200
    	} else if _d = 1 {
    		dimentio1.xoffset = -100
    		dimentio2.xoffset = -200
    		
    	} else {
    		dimentio1.xoffset = -100
    		dimentio2.xoffset = 100}
    	}
    	
    	
        var _a = point_direction(0,0,right_down-left_down,down_down-up_down)
        if !(_a == 0 and right_down == 0){ 
    tpy = tpy+lengthdir_y(40,_a)
    tpx = tpx+lengthdir_x(40,_a)
        	x = tpx
        	y = tpy
        	
        }
    } else {
    	
    	if instance_exists(dimentio1) and instance_exists(dimentio2) and window_timer == 1{
    	var _d = right_down-left_down
    	x = x-(curplace*100)
    	if _d = -1 {
    		dimentio1.xoffset = 100
    		dimentio2.xoffset = 200
    		curplace = -1
    	x = x-100
    	} else if _d = 1 {
    		dimentio1.xoffset = -100
    		dimentio2.xoffset = -200
    	x = x+100
    		curplace = +1
    		
    	} else {
    		curplace = 0
    		dimentio1.xoffset = -100
    		dimentio2.xoffset = 100}
    	} else if window_timer == 1 {
    	var _d = right_down-left_down
    	if _d = -1 {
	dimentio1 = instance_create(x-100,y,"obj_article2");
	dimentio1.xoffset = 100
	dimentio2 = instance_create(x-100,y,"obj_article2");
	dimentio2.xoffset = 200
    	x = x-100
    		curplace = -1
    	}
    	if _d = 1 {
dimentio1 = instance_create(x-100,y,"obj_article2");
dimentio1.xoffset = -100
dimentio2 = instance_create(x-100,y,"obj_article2");
dimentio2.xoffset = -200
    	x = x+100
    		curplace = 1
    	}
    	if _d = 0 {
    		
    		curplace = 0
	dimentio1 = instance_create(x-100,y,"obj_article2");
	dimentio1.xoffset = -100
dimentio2 = instance_create(x-100,y,"obj_article2");
dimentio2.xoffset = 100
    	}
    	}
    }
    }
    
    if window == 2 and window_timer = 6{
        	var _h = instance_create(0,0,"obj_article1");
	_h.articletype = "TPSquare"
	_h.state = "GOTOD"
	_h.d = self
            with obj_article2 {
		if player_id == other {
        	var _h = instance_create(0,0,"obj_article1");
	_h.articletype = "TPSquare"
	_h.state = "GOTOD"
	_h.d = self
		}
	}
    }
}
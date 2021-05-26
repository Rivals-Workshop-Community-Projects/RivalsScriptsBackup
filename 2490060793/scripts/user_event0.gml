//user-event0

//hitbox size changer

if !meter_flipped var meter_percent = meter_cur/meter_max;
else var meter_percent = 1 - (meter_cur/meter_max);

hbox_x = undefined;
hbox_y = undefined;
hbox_w = undefined;
hbox_h = undefined;
vfx_xoffset = undefined;
vfx_yoffset = undefined;
_hitbox_num = undefined;

switch attack {
    case AT_FTILT:
    _hitbox_num = [1,2];
    hbox_x = 18 + 44*meter_percent;
    hbox_w = 90*meter_percent;
    //vfx_xoffset = 40*meter_percent;
    set_hitbox()
    break;
    
    case AT_USTRONG:
    _hitbox_num = [2,3];
    hbox_y = -45 - 40*meter_percent;
    hbox_h = 80*meter_percent;
    set_hitbox()
    break;
    
    case AT_UAIR:
    _hitbox_num = [1,2];
    hbox_y = -45 - 35*meter_percent;
    hbox_h = 60*meter_percent;
    set_hitbox()
    break;
    
    case AT_FSTRONG:
    _hitbox_num = [1,2];
    hbox_x = 15 + 35*meter_percent;
    hbox_y = -35 + 8*meter_percent;
    hbox_w = 40 + 60*meter_percent;
    hbox_h = 10 + 30*meter_percent;
    set_hitbox()
    break;
    
    case AT_DSTRONG:
    _hitbox_num = [1,3];
    hbox_x = -25 - 15*meter_percent;
    hbox_w = 60*meter_percent;
    set_hitbox()
    
    _hitbox_num = [2,4];
    hbox_x = 20 + 22*meter_percent;
    hbox_w = 60*meter_percent;
    set_hitbox()
    break;
    
    case AT_DAIR:
    _hitbox_num = [1,2];
    hbox_y = -15 + 30*meter_percent
    hbox_h = 25 + 55*meter_percent
    hbox_w = 35 + 35*meter_percent
    set_hitbox()
    break;
    
    case AT_FAIR:
    _hitbox_num = [1,2];
    hbox_x = 15 + 30*meter_percent
    hbox_w = 20 + 60*meter_percent
    hbox_h = 30 + 60*meter_percent
    set_hitbox()
    break;
    
    case AT_UTILT:
    _hitbox_num = [1,4];
    hbox_x = -20*meter_percent
    hbox_y = undefined
    hbox_w = 20 + 35*meter_percent
    hbox_h = 50 + 60*meter_percent
    set_hitbox()
    
    _hitbox_num = [2,5];
    hbox_x = undefined
    hbox_y = -50 - 20*meter_percent
    hbox_w = 40 + 40*meter_percent
    hbox_h = 20 + 40*meter_percent
    set_hitbox()
    
    _hitbox_num = [3,6];
    hbox_x = 10 + 20*meter_percent
    hbox_y = undefined
    hbox_w = 20 + 30*meter_percent
    hbox_h = 40 + 30*meter_percent
    set_hitbox()
    break;
    
    case AT_USPECIAL:
    _hitbox_num = [1,2];
    hbox_x = 20 + 20*meter_percent
    hbox_y = -30 - 10*meter_percent
    hbox_w = 40 + 50*meter_percent
    hbox_h = 40 + 30*meter_percent
    set_hitbox()
    break;
    
    case AT_NAIR:
    _hitbox_num = [1,8];
    hbox_x = -20*meter_percent
    hbox_y = undefined
    hbox_w = 45*meter_percent
    hbox_h = 10 + 50*meter_percent
    set_hitbox()
    
    _hitbox_num = [2,9];
    hbox_x = undefined
    hbox_y = -40 - 20*meter_percent
    hbox_w = 10 + 55*meter_percent
    hbox_h = 50*meter_percent
    set_hitbox()
    
    _hitbox_num = [3,10];
    hbox_x = 2 + 20*meter_percent
    hbox_y = undefined
    hbox_w = 45*meter_percent
    hbox_h = 10 + 58*meter_percent
    set_hitbox()
    
    _hitbox_num = [4,11];
    hbox_x = undefined
    hbox_y = -25 + 10*meter_percent
    hbox_w = 10 + 58*meter_percent
    hbox_h = 45*meter_percent
    set_hitbox()
    
    _hitbox_num = [5,12];
    hbox_x = -20*meter_percent
    hbox_y = undefined
    hbox_w = 45*meter_percent
    hbox_h = 10 + 50*meter_percent
    set_hitbox()
    
    _hitbox_num = [6,13];
    hbox_x = undefined
    hbox_y = -40 - 20*meter_percent
    hbox_w = 10 + 55*meter_percent
    hbox_h = 50*meter_percent
    set_hitbox()
    
    _hitbox_num = [7,14];
    hbox_x = 2 + 20*meter_percent
    hbox_y = undefined
    hbox_w = 45*meter_percent
    hbox_h = 10 + 58*meter_percent
    set_hitbox()
    break;
    
    case AT_JAB:
    _hitbox_num = [2,3];
    hbox_x = 30 + 15*meter_percent;
    hbox_w = 20 + 60*meter_percent;
    hbox_h = 25 + 35*meter_percent;
    set_hitbox()
    break;
}

#define set_hitbox()

if meter_flipped && meter_cur >= meter_max {
	set_hitbox_value(attack, _hitbox_num[0], HG_WINDOW, 0);
    hbox_w = 0;
    hbox_h = 0;
} else {
	reset_hitbox_value(attack, _hitbox_num[0], HG_WINDOW);
}

var tipper_num = 1;
var sour_num = 0;
if meter_flipped {
    tipper_num = 0;
    sour_num = 1;
}
set_hitbox_value(attack, _hitbox_num[tipper_num], HG_PRIORITY, 7);
set_hitbox_value(attack, _hitbox_num[sour_num], HG_PRIORITY, 4);
reset_hitbox_value(attack, _hitbox_num[1], HG_WINDOW);

reset_hitbox_value(attack, _hitbox_num[sour_num], HG_HITBOX_X);
reset_hitbox_value(attack, _hitbox_num[sour_num], HG_HITBOX_Y);
reset_hitbox_value(attack, _hitbox_num[sour_num], HG_WIDTH);
reset_hitbox_value(attack, _hitbox_num[sour_num], HG_HEIGHT);
//reset_hitbox_value(attack, _hitbox_num[sour_num], HG_VISUAL_EFFECT_X_OFFSET);

if hbox_x != undefined set_hitbox_value(attack, _hitbox_num[tipper_num], HG_HITBOX_X, hbox_x) else reset_hitbox_value(attack, _hitbox_num[tipper_num], HG_HITBOX_X);
if hbox_y != undefined set_hitbox_value(attack, _hitbox_num[tipper_num], HG_HITBOX_Y, hbox_y) else reset_hitbox_value(attack, _hitbox_num[tipper_num], HG_HITBOX_Y);
if hbox_w != undefined set_hitbox_value(attack, _hitbox_num[tipper_num], HG_WIDTH, hbox_w) else reset_hitbox_value(attack, _hitbox_num[tipper_num], HG_WIDTH);
if hbox_h != undefined set_hitbox_value(attack, _hitbox_num[tipper_num], HG_HEIGHT, hbox_h) else reset_hitbox_value(attack, _hitbox_num[tipper_num], HG_HEIGHT);
if meter_cur < reduce_value {
    set_hitbox_value(attack, _hitbox_num[1], HG_WINDOW, 0);
}

//if vfx_xoffset != undefined set_hitbox_value(attack, _hitbox_num[1], HG_VISUAL_EFFECT_X_OFFSET, vfx_xoffset) else reset_hitbox_value(attack, _hitbox_num[1], HG_VISUAL_EFFECT_X_OFFSET);

if has_rune("L") { //Sweetspots stun.
	set_hitbox_value(attack, _hitbox_num[1], HG_EFFECT, 11);
}
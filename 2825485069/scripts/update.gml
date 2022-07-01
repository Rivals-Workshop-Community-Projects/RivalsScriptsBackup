// - Controls the Rules -

if (get_gameplay_time() = 1) {
	with obj_stage_article if ("jiggle" in self) jiggle = other.jiggle;
	with obj_stage_article_solid if ("jiggle" in self) jiggle = other.jiggle;
	with obj_stage_article_platform if ("jiggle" in self) jiggle = other.jiggle;
}

if (!is_aether_stage() && get_gameplay_time() > 1)  return;

// Timer
if (changeTimer <= 0) {
    changeTimer = 60 * (25 + random_func(current_time mod 25, 10, true));
    
    var soundPitch = 0;
    switch nextChange {
    	case "rivalIsFloat": 
    	case "rivalIsFall": soundPitch = 1; break;
    	case "rivalIsNone": soundPitch = 0.8; break;
    	case "switchSkull": if (rules[2].state) {soundPitch = 0.8;} else {soundPitch = 1;} break;
    	case "switchWall": if (rules[3].state) {soundPitch = 0.8;} else {soundPitch = 1;} break;
    	case "switchHedge": if (rules[4].state) {soundPitch = 0.8;} else {soundPitch = 1;} break;
    }
    if (soundPitch > 0) sound_play(sound_get("on" + string(random_func(1, 3, true))), false, noone, 1, soundPitch);
    
    change(nextChange);
    setupChangeOptions();
    sinceChange = 0;
    sendRules();
    
    if (trailerText) changeTimer = 60 * 30; // Trailer Only
}

if is_aether_stage() {
	changeTimer -= speed;
	sinceChange += speed;
}

// Set timer variables in Baba and Text
with obj_stage_article if ("timeUntil" in self) timeUntil = other.changeTimer;
with obj_stage_article if ("timeSince" in self) timeSince = other.sinceChange;

// Spawn Platform Hitboxes
if (changeTimer < 5) {
	for (var i = 0; i < array_length(articles); i++) {
		var obj = articles[i].id;
		if (obj.spr == "wall" && nextChange == "switchWall" && !rules[3].state) {
		    with (obj) {
		    	create_hitbox(AT_JAB, 1, x + 4 * 32, y + 64);
		    }
		}
		if (obj.spr == "hedge" && nextChange == "switchHedge" && !rules[4].state) {
		    with (obj) {
		    	create_hitbox(AT_TAUNT, 1, x + 5 * 32, y + 64);
		    }
		}
	}
}

// Player Effects
if (rules[1].state != "none") switch rules[1].state {
    case "Float":
        with (oPlayer) {
			if !free continue;
			if state_cat != SC_HITSTUN {
			vsp -= gravity_speed*0.25;
			} else {
			vsp -= hitstun_grav*0.25;
			}
		}
        break;
    case "Fall":
    	with (oPlayer) {
			if !free continue;
			if state_cat != SC_HITSTUN {
			vsp += gravity_speed*0.25;
			} else {
			vsp += hitstun_grav*0.25;
			}
		}
}



#define sendRules()

with obj_stage_article if ("rules" in self) rules = other.rules;
with obj_stage_article if ("nextAnim" in self) switch other.nextChange {
	case "rivalIsNone": nextAnim = "rivalIsNone"; break;
	case "rivalIsFloat": nextAnim = "rivalIs"; adj = "float"; break;
	case "rivalIsFall": nextAnim = "rivalIs"; adj = "fall"; break;
	case "switchSkull": if (other.rules[2].state) {nextAnim = "skullOff";} else {nextAnim = "skullOn";} break;
	case "switchWall": if (other.rules[3].state) {nextAnim = "wallOff";} else {nextAnim = "wallOn";} break;
	case "switchHedge": if (other.rules[4].state) {nextAnim = "hedgeOff";} else {nextAnim = "hedgeOn";} break;
	case "babaIsStage": nextAnim = "babaIsStage"; break; // Trailer Only
}
with obj_stage_article if ("prevAnim" in self) switch other.prevChange {
	case "rivalIsNone": prevAnim = "rivalIsNone"; break;
	case "rivalIsFloat":
	case "rivalIsFall": prevAnim = "rivalIs" break;
	case "switchSkull": if (!other.rules[2].state) {prevAnim = "skullOff";} else {prevAnim = "skullOn";} break;
	case "switchWall": if (!other.rules[3].state) {prevAnim = "wallOff";} else {prevAnim = "wallOn";} break;
	case "switchHedge": if (!other.rules[4].state) {prevAnim = "hedgeOff";} else {prevAnim = "hedgeOn";} break;
	case "babaIsStage": prevAnim = "babaIsStage"; break; // Trailer Only
}

#define change(str)

switch str {
    case "rivalIsNone": rules[1].state = "none";  dontChange = "rival"; break;
    case "rivalIsFloat": rules[1].state = "Float"; dontChange = "rival"; break;
    case "rivalIsFall": rules[1].state = "Fall"; dontChange = "rival"; break;
    case "switchSkull": rules[2].state = !rules[2].state;
        with obj_stage_article if ("isDefeat" in self) {
            isDefeat = other.rules[2].state;
        } dontChange = "skull"; break;
    case "switchWall": rules[3].state = !rules[3].state;
    	if rules[3].state {replace("wall", true, "obj_stage_article", "obj_stage_article_solid"); dontChange = "plat"; }
    	if !rules[3].state replace("wall", false, "obj_stage_article_solid", "obj_stage_article");
    	break;
    case "switchHedge": rules[4].state = !rules[4].state;
    	if rules[4].state { replace("hedge", true, "obj_stage_article", "obj_stage_article_solid");
    	                    replace("hedgeplat", true, "obj_stage_article", "obj_stage_article_platform");
    	                    dontChange = "plat";}
    	if !rules[4].state replace("hedge", false, "obj_stage_article_solid", "obj_stage_article");  
    	if !rules[4].state replace("hedgeplat", false, "obj_stage_article_platform", "obj_stage_article");
    	break;
    case "babaIsStage": rules[2].state = true; dontChange = "skull"; break; // Trailer Only
}


#define setupChangeOptions()

prevChange = nextChange;

changeOptions = [];

switch rules[1].state {
    case "Float":
    case "Fall":
        array_push(changeOptions, "rivalIsNone"); break;
    default:
        if (dontChange != "rival") array_push(changeOptions, "rivalIsFloat");    
        if (dontChange != "rival") array_push(changeOptions, "rivalIsFall");    
}

if (dontChange != "skull") array_push(changeOptions, "switchSkull");

if (rules[3].state && rules[4].state) {
    if (dontChange != "plat") array_push(changeOptions, "switchWall");    
    if (dontChange != "plat")array_push(changeOptions, "switchHedge");    
} else {
    if (!rules[3].state && dontChange != "plat") array_push(changeOptions, "switchWall");
    if (!rules[4].state && dontChange != "plat") array_push(changeOptions, "switchHedge");
}

nextChange = changeOptions[random_func(current_time, array_length(changeOptions), true)];
if (prevChange != "babaIsStage" && trailerText) nextChange = "babaIsStage";

#define replace(spr1, bool_active, type1, type2)

for (var i = 0; i < array_length(articles); i++) {
    
    if (articles[i].spr == spr1 && articles[i].type == type1) {
        instance_destroy(articles[i].id);
        var object = spawnArt(articles[i].x_pos, articles[i].y_pos, articles[i].width, articles[i].height, type2, spr1, bool_active);
        object.image_xscale = object.width;
        object.image_yscale = object.height;
        articles[i].type = type2;
        articles[i].id = object;
        articles[i].active = bool_active;
        
    }
}


#define spawnArt(x_grid, y_grid, width, height, type, spr, bool_active)
var art = instance_create(x_offset + x_grid * 32, y_offset + y_grid * 32, type, 1);
art.spr = spr;
art.active = bool_active;
art.width = width;
art.height = height;
art.image_xscale = width;
art.image_yscale = height;
return art;



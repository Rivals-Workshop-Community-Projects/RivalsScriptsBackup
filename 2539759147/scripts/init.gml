
anox = 0
anoy = 0

wsp = 0
wspx = 0
wspy = 0

roundbegin = 0 
Currstage = 0
stageroll = 0

if (is_aether_stage()) {
	nightime = true
	tradHealth[0] = 200//main hp
	tradHealth[1] = 200
	tradHealth[2] = 200
	tradHealth[3] = 200
	tradHealthD[0] = 200//red decay
	tradHealthD[1] = 200
	tradHealthD[2] = 200
	tradHealthD[3] = 200
	HealthDBase[0] = 200//decayupdate
	HealthDBase[1] = 200
	HealthDBase[2] = 200
	HealthDBase[3] = 200
	
	meterOvertime = 0.01 // [Default = 0.01]
}
if (is_aether_stage() = false){
	nightime = false
	tradHealth[0] = 300
	tradHealth[1] = 300
	tradHealth[2] = 300
	tradHealth[3] = 300
	tradHealthD[0] = 300//red decay
	tradHealthD[1] = 300
	tradHealthD[2] = 300
	tradHealthD[3] = 300
	HealthDBase[0] = 300//decayupdate
	HealthDBase[1] = 300
	HealthDBase[2] = 300
	HealthDBase[3] = 300
	
	meterOvertime = 0.01 // [Default = 0.01]
}

var i;
for (i = 0; i < 4; i++) {
	tradMeter[i] = 0
	tradMeterReal[i] = 000
	tradMeterHit[i] = 0
	tradTeam[i] = 0
	tradTeamStocks[i] = 0
}

//can_decay = 0
decay_timer[0] = 240
decay_timer[1] = 240
decay_timer[2] = 240
decay_timer[3] = 240


tradBG = -4
tradGround = -4
tradMusic = -4
tradDummy = 0
tradReset = -4
playerDamage = 20

alpha = .8
//meterOvertime = 0.01 // [Default = 0.01]

superPortrait = 0
superPortraitTimer = 0
superUser = -4

resetTime = room
tradReset = -4
tradKilled = -4
shouldEndMatch = 0
superPside = 0

ko = hit_fx_create( sprite_get("ko"), 30 )

imgBlank = sprite_get("blank")

imgArmor = sprite_get("armor")
imgShock = sprite_get("shock")
imgSticky = sprite_get("sticky")
imgBlaze = sprite_get("blaze")
imgSmoke = sprite_get("smoke")
imgAqua  = sprite_get("aqua")
imgIce = sprite_get("ice")
imgGust = sprite_get("gust")
imgHole = sprite_get("hole")
imgNinja = sprite_get("ninja")
imgFun = sprite_get("nofun")
imgHeal = sprite_get("heal")
imgDash = sprite_get("dash")
imgMash = sprite_get("mash")



baseHudIcon = sprite_get("hudIcons")

wallbreak = 0

BONG = sound_get("BONG")
COUNTER = sound_get("COUNTER")
counter_dong = "stop"
counterF = sprite_get("counter_font")
counterA = 0
CBreak = 0
StH = 0
is_training = false

with oPlayer {
    other.follow_player = id; //
}

with oPlayer {
	if (get_training_cpu_action() != CPU_FIGHT){
		other.is_training = true;
	}
}

sprite_change_offset("SBreak", 656, 256);

lighten = hit_fx_create( sprite_get( "lighten" ), 8);
sprite_change_offset("lighten", 1000, 1000);


sprite_change_offset("WB1", 50, 150);
sprite_change_offset("WB2", 50, 150);

sprite_change_offset("groundtravel", 4608/2 , 512/2);
sprite_change_offset("groundtravelblur", 4608/2 , 512/2);
sprite_change_offset("groundtravelfg", 4608/2 , 512/2);

sprite_change_offset("groundtravelnight", 4608/2 , 512/2);
sprite_change_offset("groundtravelblurnight", 4608/2 , 512/2);
sprite_change_offset("groundtravelfgnight", 4608/2 , 512/2);
sprite_change_offset("bg1night", 1800/2 , 1024/2);

sprite_change_offset("bg1", 1800/2 , 1024/2);
sprite_change_offset("roundin1", 1800/2 , 1024/2);

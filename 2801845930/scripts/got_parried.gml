// called when the character gets parried

hit_player_obj.SpamNeoString = false; // If true the visual will be created
hit_player_obj.SpamNeoStringCharge = 0; // How much power activating will have (max: 5)
    
hit_player_obj.SpamNeoStringOppLineVsp = 0;
hit_player_obj.SpamNeoStringOppLineHsp1 = 0;

hit_player_obj.SpamNeoStringPosYi = 0;
hit_player_obj.SpamNeoStringPosXi = 0;
hit_player_obj.SpamNeoStringPosYf = 0;
hit_player_obj.SpamNeoStringPosXf = 0;

hit_player_obj.SpamNeoStringStartTimer = 0; // Increases when SpamNeoString = true to make the string spawn

hit_player_obj.SpamNeoStringStop = true;
hit_player_obj.SpamNeoStringStopTimer = 0;

// S. Poison

hit_player_obj.SpamNeoSPoison = false;
hit_player_obj.SpamNeoSPoisonTimer = 0;
hit_player_obj.SpamNeoSPoisonOutlineTimer = 0;
hit_player_obj.SpamNeoSPoisonOutlineCol1 = 0;
hit_player_obj.SpamNeoSPoisonOutlineCol2 = 0;
hit_player_obj.SpamNeoSPoisonOutlineFix = false;

// Snap String

hit_player_obj.SpamNeoSnap = false;
hit_player_obj.SpamNeoSnapCount = 0; // So that time runs ever 2 frames
hit_player_obj.SpamNeoSnapTimer = 0;
hit_player_obj.SpamNeoSnapAnim = false;
hit_player_obj.SpamNeoSnapAnimEnd = false;
hit_player_obj.SpamNeoSnapPratTime = 0; // Value 1-5
hit_player_obj.SpamNeoSnapPratFrames = 0; // Remaining time in Pratfall (starts when free == false)
hit_player_obj.SpamNeoSnapPrat = false;
hit_player_obj.SpamNeoSnapNormPratland = 0;

// Spamton Stuff

SpamNeoPullPower = 0; // Set between 1-5
SpamNeoPullX = 0;
SpamNeoPullY = 0;
SpamNeoPullON = false;

SpamNeoSnappingHitbox = false; // When true creates a hitbox
SpamNeoSnappingXp1 = 0;
SpamNeoSnappingYp1 = 0;
SpamNeoSnappingXp2 = 0;
SpamNeoSnappingYp2 = 0;
SpamNeoSnappingXp3 = 0;
SpamNeoSnappingYp3 = 0;
SpamNeoSnappingXp4 = 0;
SpamNeoSnappingYp4 = 0;

hit_player_obj.SpamNeoStringPlayerId = 0;

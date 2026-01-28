//cat hotline
old_idx = 0;
codec_avail = 1;
codec_buffer = 10;
codec_controls = 0;
codec_play = [];
codec_timer = 0;
codec_intro = 0;
codec_yi = 0;
codec_speakername = "";
codec_speakerimg = 0;
codec_static = null;
special_url = null;
missing_codec = [
	msg("yi", 0, 62, "Abacus, do you have information on this opponent?"),
	msg("ruyi", 0, 44, "I regret to inform you Lord Yi, I am unable to retrieve any data or information on this particular contender."),
	msg("kuafu", 1, 22, "No information? That's unusually rare for you."),
	msg("kuafu", 6, 63, "Perhaps your system needs an update."),
	msg("ruyi", 0, 2, "I'll try to gather data as we go, however I fear the battle might already be over by then."),
	msg("yi", 0, 70, "It's fine. I'll try to figure it out myself."),
	msg("ruyi", 0, 33, "Very well, may victory and skill favour you in this battle."),
	msg("kuafu", 0, 45, "Go get them, brother!"),
	msg("shuanshuan", 1, 62, "Good Luck, Yi!")
];
basecast_codec = [];
codec_chars = ["yi", "kuafu", "shuanshuan", "ruyi"];
codex_textspeed = 1;

/*
msg = {
	char: character,
	expr: expression,
	txt: text,
	clip: voiceclip
}
codec_play = [msg, msg, msg, msg];
*/

//hotline compat variables
yi_codec_available = 1;
yi_codec_data = [
	msg("yi", 0, 12, "What the hell’s going on?"),
	msg("kuafu", 3, 20, "What in the...?! That guy looks exactly like Yi!"),
	msg("yi", 0, 54, "This mirror image has every exact move I have, even my Azure bow and my mystic nymph... How is this possible?"),
	msg("shuanshuan", 3, 35, "There are two of Yis? But wait, their colour is different then Yi's colour."),
	msg("shuanshuan", 4, 20, "I mean, our Yi, I mean, oh, I don’t know what’s going on!"),
	msg("ruyi", 0, 0, "This could be a result of the Abyss, or a third party that is producing clones with your DNA, which they somehow obtained."),
	msg("ruyi", 0, 29, "Whoever dares to make impersonations of my lord is unforgivable!"),
	msg("ruyi", 0, 37, "Give me a moment, my lord, I'm gathering every analysis I can!"),
	msg("yi", 0, 65, "No need for that."),
	msg("yi", 0, 1, "If oneself knows oneself, then one must know how to surpass oneself."),
	msg("shuanshuan", 3, 36, "What does that mean, Yi?"),
	msg("yi", 0, 3, "It means if I know myself, then I know how to beat myself. "),
	msg("yi", 0, 4, "For instance, I'm very lightweight, that's a start."),
	msg("yi", 0, 71, "And if this mirror image has the same weaknesses I have, then I'm sure to win."),
	msg("yi", 0, 85, "For the time being, wait until I come back to the Pavilion, and be prepared in case of the worst outcome..."),
	msg("yi", 0, 77, "And do not contact me until I come home."),
	msg("ruyi", 0, 33, "...understood, may victory and triumph favour you, my lord"),
	msg("kuafu", 5, 45, "Get that imposter who dared wear the face of my brother I swore to!"),
	msg("shuanshuan", 1, 122, "I know my real brother can never lose! You can do it, Yi!")
];

yi_voices = ["VO_YiAdult_Emotion_Affirmation_v1", "VO_YiAdult_Emotion_Affirmation_v2", "VO_YiAdult_Emotion_Affirmation_v3", "VO_YiAdult_Emotion_Affirmation_v4", "VO_YiAdult_Emotion_Affirmation_v5", "VO_YiAdult_Emotion_Anger_v1", "VO_YiAdult_Emotion_Anger_v2", "VO_YiAdult_Emotion_Anger_v3", "VO_YiAdult_Emotion_Anger_v4", "VO_YiAdult_Emotion_Anger_v5", "VO_YiAdult_Emotion_Bafflement_v1", "VO_YiAdult_Emotion_Bafflement_v2", "VO_YiAdult_Emotion_Bafflement_v3", "VO_YiAdult_Emotion_Bafflement_v4", "VO_YiAdult_Emotion_Bafflement_v5", "VO_YiAdult_Emotion_Bewilderment_v1", "VO_YiAdult_Emotion_Bewilderment_v2", "VO_YiAdult_Emotion_Bewilderment_v3", "VO_YiAdult_Emotion_Bewilderment_v4", "VO_YiAdult_Emotion_Bewilderment_v5", "VO_YiAdult_Emotion_Blame_v1", "VO_YiAdult_Emotion_Blame_v2", "VO_YiAdult_Emotion_Blame_v3", "VO_YiAdult_Emotion_DisdainHurt_v1", "VO_YiAdult_Emotion_DisdainHurt_v2", "VO_YiAdult_Emotion_DisdainHurt_v3", "VO_YiAdult_Emotion_DisdainHurt_v4", "VO_YiAdult_Emotion_Disdain_v1", "VO_YiAdult_Emotion_Disdain_v2", "VO_YiAdult_Emotion_Disdain_v3", "VO_YiAdult_Emotion_Disdain_v4", "VO_YiAdult_Emotion_Disdain_v5", "VO_YiAdult_Emotion_Disdain_v6", "VO_YiAdult_Emotion_Frustration_v1", "VO_YiAdult_Emotion_Frustration_v2", "VO_YiAdult_Emotion_Frustration_v3", "VO_YiAdult_Emotion_Frustration_v4", "VO_YiAdult_Emotion_Frustration_v5", "VO_YiAdult_Emotion_Irritation_v1", "VO_YiAdult_Emotion_Irritation_v2", "VO_YiAdult_Emotion_Irritation_v3", "VO_YiAdult_Emotion_Muted_v1", "VO_YiAdult_Emotion_Muted_v2", "VO_YiAdult_Emotion_Muted_v3", "VO_YiAdult_Emotion_Sigh_v1", "VO_YiAdult_Emotion_Sigh_v2", "VO_YiAdult_Emotion_Sigh_v3", "VO_YiAdult_Emotion_Sigh_v4", "VO_YiAdult_Emotion_Sigh_v5", "VO_YiAdult_Emotion_Sneer_v1", "VO_YiAdult_Emotion_Sneer_v2", "VO_YiAdult_Emotion_Sneer_v3", "VO_YiAdult_Emotion_Sneer_v4", "VO_YiAdult_Emotion_Struggle_v1", "VO_YiAdult_Emotion_Struggle_v2", "VO_YiAdult_Emotion_Struggle_v3", "VO_YiAdult_Emotion_Summoning_v1", "VO_YiAdult_Emotion_Summoning_v2", "VO_YiAdult_Emotion_Summoning_v3", "VO_YiAdult_Emotion_Summoning_v4", "VO_YiAdult_Emotion_Think_v1", "VO_YiAdult_Emotion_Think_v2", "VO_YiAdult_Emotion_Think_v3", "VO_YiAdult_Emotion_Think_v4", "VO_YiAdult_Phrase_Damnit", "VO_YiAdult_Phrase_Enough", "VO_YiAdult_Phrase_GoodBye_v1", "VO_YiAdult_Phrase_GoodBye_v2", "VO_YiAdult_Phrase_Heng", "VO_YiAdult_Phrase_HengYouThere", "VO_YiAdult_Phrase_IGetIt", "VO_YiAdult_Phrase_IPromise", "VO_YiAdult_Phrase_ItsEnough", "VO_YiAdult_Phrase_NeverForget", "VO_YiAdult_Phrase_No_v1", "VO_YiAdult_Phrase_No_v2", "VO_YiAdult_Phrase_No_v3", "VO_YiAdult_Phrase_SeeYou_v1", "VO_YiAdult_Phrase_SeeYou_v2", "VO_YiAdult_Phrase_SeeYou_v3", "VO_YiAdult_Phrase_SeeYou_v4", "VO_YiAdult_Phrase_SorryIMissYou", "VO_YiAdult_Phrase_Sorry_v1", "VO_YiAdult_Phrase_Sorry_v2", "VO_YiAdult_Phrase_WaitMe_v1", "VO_YiAdult_Phrase_WaitMe_v2", "VO_YiAdult_Phrase_WhatHappened", "VO_YiAdult_Phrase_Why"];
ruyi_voices = ["VO_Abacus_Emotion_Affirmation", "VO_Abacus_Emotion_Astonishment", "VO_Abacus_Emotion_Dilemma", "VO_Abacus_Emotion_Doubt", "VO_Abacus_Emotion_Panic", "VO_Abacus_Emotion_Perplexity", "VO_Abacus_Emotion_Questioning", "VO_Abacus_Emotion_Tension", "VO_Abacus_Emotion_Unease", "VO_Abacus_Phrase_Affirmative_v1", "VO_Abacus_Phrase_Affirmative_v2", "VO_Abacus_Phrase_Affirmative_v3", "VO_Abacus_Phrase_Appreciate", "VO_Abacus_Phrase_BeCareful", "VO_Abacus_Phrase_Complete", "VO_Abacus_Phrase_DreamScape", "VO_Abacus_Phrase_GotWhatIWanted", "VO_Abacus_Phrase_KuafuMaster", "VO_Abacus_Phrase_Malfunction_v1", "VO_Abacus_Phrase_Malfunction_v2", "VO_Abacus_Phrase_Malfunction_v3", "VO_Abacus_Phrase_Malfunction_v4", "VO_Abacus_Phrase_Malfunction_v5", "VO_Abacus_Phrase_MasterHype_v1", "VO_Abacus_Phrase_MasterHype_v2", "VO_Abacus_Phrase_MasterHype_v3", "VO_Abacus_Phrase_MasterHype_v4", "VO_Abacus_Phrase_MasterHype_v5", "VO_Abacus_Phrase_Master_v1", "VO_Abacus_Phrase_Master_v2", "VO_Abacus_Phrase_Master_v3", "VO_Abacus_Phrase_Master_v4", "VO_Abacus_Phrase_Master_v5", "VO_Abacus_Phrase_MayLuckBeWith", "VO_Abacus_Phrase_MovieName", "VO_Abacus_Phrase_Report_v1", "VO_Abacus_Phrase_Report_v2", "VO_Abacus_Phrase_Report_v3", "VO_Abacus_Phrase_Report_v4", "VO_Abacus_Phrase_Report_v5", "VO_Abacus_Phrase_SomethingWrong", "VO_Abacus_Phrase_Sorry", "VO_Abacus_Phrase_Warning_v1", "VO_Abacus_Phrase_Warning_v2", "VO_Abacus_Phrase_YourHighness"];
kuafu_voices = ["VO_KuaFu_Emotion_Anger_v1", "VO_KuaFu_Emotion_Anger_v2", "VO_KuaFu_Emotion_Anger_v3", "VO_KuaFu_Emotion_Anger_v4", "VO_KuaFu_Emotion_Anger_v5", "VO_KuaFu_Emotion_Anger_v6", "VO_KuaFu_Emotion_Astonishment_v1", "VO_KuaFu_Emotion_Astonishment_v2", "VO_KuaFu_Emotion_Astonishment_v3", "VO_KuaFu_Emotion_Astonishment_v4", "VO_KuaFu_Emotion_Astonishment_v5", "VO_KuaFu_Emotion_Blame_v1", "VO_KuaFu_Emotion_Blame_v2", "VO_KuaFu_Emotion_Blame_v3", "VO_KuaFu_Emotion_Calling_v1", "VO_KuaFu_Emotion_Calling_v2", "VO_KuaFu_Emotion_Calling_v3", "VO_KuaFu_Emotion_Calling_v4", "VO_KuaFu_Emotion_Calling_v5", "VO_KuaFu_Emotion_Confusion_v1", "VO_KuaFu_Emotion_Confusion_v2", "VO_KuaFu_Emotion_Confusion_v3", "VO_KuaFu_Emotion_Confusion_v4", "VO_KuaFu_Emotion_Confusion_v5", "VO_KuaFu_Emotion_Contemplation_v1", "VO_KuaFu_Emotion_Contemplation_v2", "VO_KuaFu_Emotion_Contemplation_v3", "VO_KuaFu_Emotion_Contemplation_v4", "VO_KuaFu_Emotion_Dejection_v1", "VO_KuaFu_Emotion_Dejection_v2", "VO_KuaFu_Emotion_Dejection_v3", "VO_KuaFu_Emotion_Dejection_v4", "VO_KuaFu_Emotion_Dejection_v5", "VO_KuaFu_Emotion_Disdain_v1", "VO_KuaFu_Emotion_Disdain_v2", "VO_KuaFu_Emotion_Disdain_v3", "VO_KuaFu_Emotion_Disdain_v4", "VO_KuaFu_Emotion_Disdain_v5", "VO_KuaFu_Emotion_Disdain_v6", "VO_KuaFu_Emotion_Disdain_v7", "VO_KuaFu_Emotion_Excitement_v1", "VO_KuaFu_Emotion_Excitement_v2", "VO_KuaFu_Emotion_Excitement_v3", "VO_KuaFu_Emotion_Excitement_v4", "VO_KuaFu_Emotion_Exclamation_v1", "VO_KuaFu_Emotion_Exclamation_v2", "VO_KuaFu_Emotion_Exclamation_v3", "VO_KuaFu_Emotion_Exclamation_v4", "VO_KuaFu_Emotion_Exclamation_v5", "VO_KuaFu_Emotion_Happiness_v1", "VO_KuaFu_Emotion_Happiness_v2", "VO_KuaFu_Emotion_Happiness_v3", "VO_KuaFu_Emotion_Happiness_v4", "VO_KuaFu_Emotion_Happiness_v5", "VO_KuaFu_Emotion_Impatience_v1", "VO_KuaFu_Emotion_Impatience_v2", "VO_KuaFu_Emotion_Impatience_v3", "VO_KuaFu_Emotion_Impatience_v4", "VO_KuaFu_Emotion_Joy_v1", "VO_KuaFu_Emotion_Joy_v2", "VO_KuaFu_Emotion_Joy_v3", "VO_KuaFu_Emotion_Perplexity_v1", "VO_KuaFu_Emotion_Perplexity_v2", "VO_KuaFu_Emotion_Perplexity_v3", "VO_KuaFu_Emotion_Perplexity_v4", "VO_KuaFu_Emotion_Perplexity_v5", "VO_KuaFu_Emotion_Questioning_v1", "VO_KuaFu_Emotion_Questioning_v2", "VO_KuaFu_Emotion_Questioning_v3", "VO_KuaFu_Emotion_Questioning_v4", "VO_KuaFu_Emotion_Questioning_v5", "VO_KuaFu_Emotion_Surprise_v1", "VO_KuaFu_Emotion_Surprise_v2", "VO_KuaFu_Emotion_Surprise_v3", "VO_KuaFu_Emotion_Surprise_v4", "VO_KuaFu_Emotion_Surprise_v5", "VO_KuaFu_Phrase_AhSuchHassle", "VO_KuaFu_Phrase_AllICanSay", "VO_KuaFu_Phrase_Apeman", "VO_KuaFu_Phrase_AreYouSerious_v1", "VO_KuaFu_Phrase_AreYouSerious_v2", "VO_KuaFu_Phrase_AreYouSerious_v3", "VO_KuaFu_Phrase_AreYouSerious_v4", "VO_KuaFu_Phrase_Bro", "VO_KuaFu_Phrase_ButPerhaps", "VO_KuaFu_Phrase_Done_v1", "VO_KuaFu_Phrase_Done_v2", "VO_KuaFu_Phrase_Done_v3", "VO_KuaFu_Phrase_Eh_v1", "VO_KuaFu_Phrase_Eh_v2", "VO_KuaFu_Phrase_Eh_v3", "VO_KuaFu_Phrase_Eh_v4", "VO_KuaFu_Phrase_ForgetIt", "VO_KuaFu_Phrase_GoodbyeBro_v1", "VO_KuaFu_Phrase_GoodbyeBro_v2", "VO_KuaFu_Phrase_GoodbyeBro_v3", "VO_KuaFu_Phrase_HaveNightmare", "VO_KuaFu_Phrase_IGuess", "VO_KuaFu_Phrase_ISwear", "VO_KuaFu_Phrase_Ithought", "VO_KuaFu_Phrase_KunlunHammer", "VO_KuaFu_Phrase_Listen_v1", "VO_KuaFu_Phrase_Listen_v2", "VO_KuaFu_Phrase_MaySunBeWithUs", "VO_KuaFu_Phrase_No", "VO_KuaFu_Phrase_NoSuchThing", "VO_KuaFu_Phrase_Noway", "VO_KuaFu_Phrase_ReturnHome", "VO_KuaFu_Phrase_ShutUp", "VO_KuaFu_Phrase_Sorry", "VO_KuaFu_Phrase_SuchHassle_v1", "VO_KuaFu_Phrase_SuchHassle_v2", "VO_KuaFu_Phrase_SuchHassle_v3", "VO_KuaFu_Phrase_SuchHassle_v4", "VO_KuaFu_Phrase_TheSeal", "VO_KuaFu_Phrase_What_v1", "VO_KuaFu_Phrase_What_v2", "VO_KuaFu_Phrase_Why", "VO_KuaFu_Phrase_YiListen", "VO_KuaFu_Phrase_YiNo", "VO_KuaFu_Phrase_YiReally", "VO_KuaFu_Phrase_YiSad", "VO_KuaFu_Phrase_Yi_v1", "VO_KuaFu_Phrase_Yi_v2", "VO_KuaFu_Phrase_YouHearMe"];
shuanshuan_voices = ["VO_Shuan_Emotion_Admiration_v1", "VO_Shuan_Emotion_Admiration_v2", "VO_Shuan_Emotion_Admiration_v3", "VO_Shuan_Emotion_Admiration_v4", "VO_Shuan_Emotion_Admiration_v5", "VO_Shuan_Emotion_Amazement_v1", "VO_Shuan_Emotion_Amazement_v2", "VO_Shuan_Emotion_Amazement_v3", "VO_Shuan_Emotion_Amazement_v4", "VO_Shuan_Emotion_Anxiety_v1", "VO_Shuan_Emotion_Anxiety_v2", "VO_Shuan_Emotion_Anxiety_v3", "VO_Shuan_Emotion_Anxiety_v4", "VO_Shuan_Emotion_Anxiety_v5", "VO_Shuan_Emotion_Astonishment_v1", "VO_Shuan_Emotion_Astonishment_v2", "VO_Shuan_Emotion_Astonishment_v3", "VO_Shuan_Emotion_Astonishment_v4", "VO_Shuan_Emotion_Astonishment_v5", "VO_Shuan_Emotion_Awkwardness_v1", "VO_Shuan_Emotion_Awkwardness_v2", "VO_Shuan_Emotion_Awkwardness_v3", "VO_Shuan_Emotion_Awkwardness_v4", "VO_Shuan_Emotion_Awkwardness_v5", "VO_Shuan_Emotion_Certainty_v1", "VO_Shuan_Emotion_Certainty_v2", "VO_Shuan_Emotion_Certainty_v3", "VO_Shuan_Emotion_Certainty_v4", "VO_Shuan_Emotion_Certainty_v5", "VO_Shuan_Emotion_Confidence_v1", "VO_Shuan_Emotion_Confidence_v2", "VO_Shuan_Emotion_Confidence_v3", "VO_Shuan_Emotion_Confidence_v4", "VO_Shuan_Emotion_Confidence_v5", "VO_Shuan_Emotion_Confusion_v1", "VO_Shuan_Emotion_Confusion_v2", "VO_Shuan_Emotion_Confusion_v3", "VO_Shuan_Emotion_Confusion_v4", "VO_Shuan_Emotion_Confusion_v5", "VO_Shuan_Emotion_Confusion_v6", "VO_Shuan_Emotion_Defiance_v1", "VO_Shuan_Emotion_Defiance_v2", "VO_Shuan_Emotion_Defiance_v3", "VO_Shuan_Emotion_Defiance_v4", "VO_Shuan_Emotion_Dizziness_v1", "VO_Shuan_Emotion_Dizziness_v2", "VO_Shuan_Emotion_Dizziness_v3", "VO_Shuan_Emotion_Dizziness_v4", "VO_Shuan_Emotion_Dizziness_v5", "VO_Shuan_Emotion_DryLaugh_v1", "VO_Shuan_Emotion_DryLaugh_v2", "VO_Shuan_Emotion_DryLaugh_v3", "VO_Shuan_Emotion_Fear_v1", "VO_Shuan_Emotion_Fear_v2", "VO_Shuan_Emotion_Fear_v3", "VO_Shuan_Emotion_Fear_v4", "VO_Shuan_Emotion_Grief_v1", "VO_Shuan_Emotion_Grief_v2", "VO_Shuan_Emotion_Grief_v3", "VO_Shuan_Emotion_Grief_v4", "VO_Shuan_Emotion_Grief_v5", "VO_Shuan_Emotion_Happy_v1", "VO_Shuan_Emotion_Happy_v2", "VO_Shuan_Emotion_Happy_v3", "VO_Shuan_Emotion_Happy_v4", "VO_Shuan_Emotion_Happy_v5", "VO_Shuan_Emotion_Helplessness_v1", "VO_Shuan_Emotion_Helplessness_v2", "VO_Shuan_Emotion_Helplessness_v3", "VO_Shuan_Emotion_Helplessness_v4", "VO_Shuan_Emotion_Helplessness_v5", "VO_Shuan_Emotion_Hesitation_v1", "VO_Shuan_Emotion_Hesitation_v2", "VO_Shuan_Emotion_Hesitation_v3", "VO_Shuan_Emotion_Hesitation_v4", "VO_Shuan_Emotion_Indecision_v1", "VO_Shuan_Emotion_Indecision_v2", "VO_Shuan_Emotion_Indecision_v3", "VO_Shuan_Emotion_Indecision_v4", "VO_Shuan_Emotion_Indecision_v5", "VO_Shuan_Emotion_Panic_v1", "VO_Shuan_Emotion_Panic_v2", "VO_Shuan_Emotion_Panic_v3", "VO_Shuan_Emotion_Perplexity_v1", "VO_Shuan_Emotion_Perplexity_v2", "VO_Shuan_Emotion_Perplexity_v3", "VO_Shuan_Emotion_Perplexity_v4", "VO_Shuan_Emotion_Perplexity_v5", "VO_Shuan_Emotion_Perplexity_v6", "VO_Shuan_Emotion_Playfulness_v1", "VO_Shuan_Emotion_Playfulness_v2", "VO_Shuan_Emotion_Playfulness_v3", "VO_Shuan_Emotion_Playfulness_v4", "VO_Shuan_Emotion_Playfulness_v5", "VO_Shuan_Emotion_Protest_v1", "VO_Shuan_Emotion_Protest_v2", "VO_Shuan_Emotion_Protest_v3", "VO_Shuan_Emotion_Protest_v4", "VO_Shuan_Emotion_Protest_v5", "VO_Shuan_Emotion_Sadness_v1", "VO_Shuan_Emotion_Sadness_v2", "VO_Shuan_Emotion_Sadness_v3", "VO_Shuan_Emotion_Sadness_v4", "VO_Shuan_Emotion_Surprise_v1", "VO_Shuan_Emotion_Surprise_v2", "VO_Shuan_Emotion_Surprise_v3", "VO_Shuan_Emotion_Surprise_v4", "VO_Shuan_Emotion_Surprise_v5", "VO_Shuan_Emotion_Surprise_v6", "VO_Shuan_Emotion_Terror_v1", "VO_Shuan_Emotion_Terror_v2", "VO_Shuan_Emotion_Terror_v3", "VO_Shuan_Emotion_Terror_v4", "VO_Shuan_Emotion_Terror_v5", "VO_Shuan_Phrase_Abacus", "VO_Shuan_Phrase_AMeal", "VO_Shuan_Phrase_AtLeastYouHere", "VO_Shuan_Phrase_BigBroCall_v1", "VO_Shuan_Phrase_BigBroCall_v2", "VO_Shuan_Phrase_BigBroCall_v3", "VO_Shuan_Phrase_BigBroCall_v4", "VO_Shuan_Phrase_BigBroCall_v5", "VO_Shuan_Phrase_BigBroCheerUp", "VO_Shuan_Phrase_BigBroNervous_v1", "VO_Shuan_Phrase_BigBroNervous_v2", "VO_Shuan_Phrase_BigBroNo", "VO_Shuan_Phrase_BigBroQuestion_v1", "VO_Shuan_Phrase_BigBroQuestion_v2", "VO_Shuan_Phrase_BigBroWait_v1", "VO_Shuan_Phrase_BigBroWait_v2", "VO_Shuan_Phrase_BigBroWhy_v1", "VO_Shuan_Phrase_BigBroWhy_v2", "VO_Shuan_Phrase_BigBroYouAlright", "VO_Shuan_Phrase_Cheater", "VO_Shuan_Phrase_DinnerTonight", "VO_Shuan_Phrase_Done_v1", "VO_Shuan_Phrase_Done_v2", "VO_Shuan_Phrase_DontGo", "VO_Shuan_Phrase_DoYouKnow_v1", "VO_Shuan_Phrase_DoYouKnow_v2", "VO_Shuan_Phrase_Fine_v1", "VO_Shuan_Phrase_Fine_v2", "VO_Shuan_Phrase_ForReal_v1", "VO_Shuan_Phrase_ForReal_v2", "VO_Shuan_Phrase_HalfBelieve", "VO_Shuan_Phrase_IGotIt", "VO_Shuan_Phrase_IHaveNothingLeft", "VO_Shuan_Phrase_IKnow_v1", "VO_Shuan_Phrase_IKnow_v2", "VO_Shuan_Phrase_IWont", "VO_Shuan_Phrase_KunlunSaint", "VO_Shuan_Phrase_NoIWont", "VO_Shuan_Phrase_NoNo_v1", "VO_Shuan_Phrase_NoNo_v2", "VO_Shuan_Phrase_NotFair", "VO_Shuan_Phrase_No_v1", "VO_Shuan_Phrase_No_v2", "VO_Shuan_Phrase_NullNymph", "VO_Shuan_Phrase_OK_v1", "VO_Shuan_Phrase_OK_v2", "VO_Shuan_Phrase_SeeYou", "VO_Shuan_Phrase_Thanks_v1", "VO_Shuan_Phrase_Thanks_v2", "VO_Shuan_Phrase_ThankYou", "VO_Shuan_Phrase_WeTogether_v1", "VO_Shuan_Phrase_WeTogether_v2", "VO_Shuan_Phrase_Why", "VO_Shuan_Phrase_WhyCried_v1", "VO_Shuan_Phrase_WhyCried_v2", "VO_Shuan_Phrase_Wonderful_v1", "VO_Shuan_Phrase_Wonderful_v2", "VO_Shuan_Phrase_Wrong", "VO_Shuan_Phrase_YouBack", "VO_Shuan_Phrase_YouLied"];

//final smash
fs_char_chosen_final_smash = "custom";
fs_meter_y = -32;
fs_meter_x = -4;
fs_hide_ball = 0;
fs_char_portrait_y = 110;
startpos = [0, 0];
firepos = [0, 0];
boompos = [0, 0];
fire_timer = 0;

//Dracula support
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = sprite_get("dracula_portrait_2");
dracula_portrait3 = asset_get("empty_sprite");
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "Ah, a Solarian, what business do you have with me?";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "I'm not here to chat, old man. I'm here to release the Apeman you've imprisoned.";
page++;

//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "The humans? I was under the impression your kind has little regard for these monkeys.";
page++;

//Page 3
dracula_speaker[page] = 0;
dracula_text[page] = "After all, you had plans for them in the beginning, Yi.";
page++;

//Page 4
dracula_speaker[page] = 2;
dracula_text[page] = "You know me?";
page++;

//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "Why yes, humans are merely resources for your work.";
page++;

//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "Why bother associating with these fools who only bring nothing but destruction?";
page++;

//Page 6
dracula_speaker[page] = 1;
dracula_text[page] = "Not all Apeman are bad, though they’re strange creatures.";
page++;


//Page 7
dracula_speaker[page] = 1;
dracula_text[page] = "Even I have to admit, there are some worth fighting for.";
page++;


//Page 8
dracula_speaker[page] = 0;
dracula_text[page] = "Are you implying you now have a soft spot for them?";
page++;

//Page 9
dracula_speaker[page] = 0;
dracula_text[page] = "Is it because of that human child you’re so fond of? How weak!";
page++;

//Page 10
dracula_speaker[page] = 0;
dracula_text[page] = "Perhaps ending that boy’s life will sever that weak mindset!";
page++;

//Page 11
dracula_speaker[page] = 2;
dracula_text[page] = "I'm warning you, lay a finger on Shuanshuan...";
page++;

//Page 12
dracula_speaker[page] = 2;
dracula_text[page] = "...and I will make you suffer, until you beg for the morning sun!";
page++;

//Page 13
dracula_speaker[page] = 0;
dracula_text[page] = "You dare?!";
page++;

//Page 14
dracula_speaker[page] = 0;
dracula_text[page] = "[glass]";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "You should have severed your ties with man long ago. Now I shall sever your heart!";
page++;

//pkmn stadium
pkmn_stadium_front_img = sprite_get("pokemon_front");
pkmn_stadium_back_img = sprite_get("pokemon_back");

#define msg(character, expression, voiceclip, text)
return {
	char: character,
	expr: expression,
	txt: text,
	clip: voiceclip
}
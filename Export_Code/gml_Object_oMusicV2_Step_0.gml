var i, arrDraw, arrRoom, arrRoomPrev, arrSAX;
sameRoomSAX = 0
if audio_is_playing(musFanfare)
    exit
if global.spectator
    exit
if global.showHealthIndicators
    chasedBySAX = 1
else
    chasedBySAX = 0
if (prevChasedBySAX != chasedBySAX)
{
    if ((!prevChasedBySAX) && chasedBySAX)
    {
        if audio_is_playing(oMusicV2.currentbgm)
            audio_sound_gain(oMusicV2.currentbgm, 0, 0)
        if audio_is_playing(musSAXEnvironmentalAmbience)
            audio_sound_gain(musSAXEnvironmentalAmbience, 0, 0)
        if audio_is_playing(musSAXAppear)
            audio_sound_gain(musSAXAppear, 0, 0)
        if audio_is_playing(musSAXChase)
            audio_stop_sound(musSAXChase)
        if (!audio_is_playing(musSAXChase))
            audio_play_sound(musSAXChase, 1, true)
        audio_sound_gain(musSAXChase, 0, 0)
        audio_sound_gain(musSAXChase, (global.opmusicvolume / 100), 0)
    }
    if (prevChasedBySAX && (!chasedBySAX))
    {
        audio_sound_gain(musSAXChase, 0, fadeoutTimer)
        audio_stop_sound(musSAXEnvironmentalAmbience)
        audio_stop_sound(musSAXAppear)
        audio_stop_sound(musSAXChase)
        if audio_is_playing(oMusicV2.currentbgm)
            audio_sound_gain(oMusicV2.currentbgm, (global.opmusicvolume / 100), fadeoutTimer)
    }
    prevChasedBySAX = chasedBySAX
}

/// @description Pressed logic
event_inherited();

if is_pressed = true
{
	button_text = "Sounds on";
	audio_group_set_gain(sound_audiogroup, 1, 0);
} else
{
	button_text = "Sounds off";
	audio_group_set_gain(sound_audiogroup, 1, 0);
}
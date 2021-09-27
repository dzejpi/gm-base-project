/// @description Pressed logic
event_inherited();

if is_pressed = true
{
	button_text = "Music on";
	audio_group_set_gain(music_audiogroup, 1, 0);
} else
{
	button_text = "Music off";
	audio_group_set_gain(music_audiogroup, 1, 0);
}
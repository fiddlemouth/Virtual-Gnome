extends Node2D

func play_random_voice_line():
	var random = rand_range(0, get_child_count())
	get_child(random).play()

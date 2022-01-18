extends RigidBody2D

const voiceLineMaxCooldown := 4.0
var voiceLineCooldown = voiceLineMaxCooldown

func _process(delta):
	if voiceLineCooldown > 0:
		voiceLineCooldown -= delta
	else:
		voiceLineCooldown = voiceLineMaxCooldown + rand_range(0, voiceLineMaxCooldown)
		$Audio.play_random_voice_line()

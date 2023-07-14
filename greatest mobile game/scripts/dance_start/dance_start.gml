function dance_start(song_, submap) {
	var chump = observer_create(o_melodychaser);
	music_set(mus.null);
	music_set(song_);
	chump.mysong = song_;
}
/// Poki

function poki_loading_finished() {
	sdk.gameLoadingFinished();
}

function poki_gameplay_start() {
	poki_callback("poki.gameplay.start");
	poki_log("Gameplay Start");
	sdk.gameplayStart();		
}

function poki_gameplay_stop() {
	poki_callback("poki.gameplay.stop");
	poki_log("Gameplay Stop");
	sdk.gameplayStop();
}

function poki_happy(value) {
	poki_callback("poki.happy.time", value);
	poki_log("Happy Time: " + value);
	sdk.happyTime(value);
}

function poki_break(tag) {
	poki_callback("poki.break.started", tag);
	sdk.commercialBreak().then(function(){
		poki_callback("poki.break.completed", tag);
	});
}

function poki_rewarded_break(tag) {
	poki_callback("poki.rewarded.started", tag);
	sdk.rewardedBreak().then(
		(withReward) => {
			if (withReward) {
				poki_callback("poki.rewarded.completed", tag);
			} else {
				poki_callback("poki.rewarded.failed", tag);		
			}
		}
	);
}

/// this uses gmCallback extension to communicate with the game 
/// http://gmc.yoyogames.com/index.php?showtopic=549404

function poki_callback(event, args) {
	gmCallback.game_callback(event, args);	
}

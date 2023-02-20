function targetScore(count, blockSize){
	var s = 0.5 * ((blockSize * blockSize - blockSize) / blockSize);
	return s * count;
}

function overallQuality(_score, count, target){
	return clamp(((_score / (count *   0.5)) + 1) / target,0,1) - 0.5;
}

function targetScore(count, blockSize){
	var s = 0.5 * ((blockSize * blockSize - blockSize) / blockSize);
	return s * count;
}
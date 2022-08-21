class Main {
	static function main() {
		trace("Hello, Hax0r!");

		var cruel: String = '';
		var repeatCount: Int = 3;

		for (i in 0...repeatCount) {
			cruel += cruel == ''? 'cruel' : ', $cruel';
		}

		trace('Goodbye ($cruel) World!');

		#if js
		trace("Hello Browser Too!");
		#end
	}
}

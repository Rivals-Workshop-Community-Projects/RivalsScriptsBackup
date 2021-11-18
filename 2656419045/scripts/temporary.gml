print_many_times(string(x)); unproblematic_function();

#define print_many_times
/// print_many_times(str, count = 10, prefix = "", suffix = "")
var str = argument[0];
var count = argument_count > 1 ? argument[1] : 10;
var prefix = argument_count > 2 ? argument[2] : "";
var suffix = argument_count > 3 ? argument[3] : "";
	repeat(count) {
		print(prefix + str + suffix);
	}
	var whoopsies = 1 / 0;

#define unproblematic_function
	print("information...");
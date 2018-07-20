f_inv(x) = abs(sin(x))
n = 10


function latin_hypercube_sampling_1d(f_inv, n)
	l_limit = 0.0 : (n-1)
	rand_nos = rand(n) + l_limit
	f_inv.(rand_nos)
end

function latin_hypercube_sampling_2d(f_inv, n)
	l_limit = 0.0 : (n-1)
	value_1 = l_limit + latin_hypercube_sampling_1d(f_inv, n)
	value_2 = l_limit + latin_hypercube_sampling_1d(f_inv, n)
	value_1 = value_1[randperm(n)]
	value_2 = value_2[randperm(n)]
	value = hcat(value_1, value_2)
end

println(latin_hypercube_sampling_2d(f_inv, n))
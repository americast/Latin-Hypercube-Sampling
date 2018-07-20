f_inv(x) = sin(x)
n = 10

function latin_hypercube_sampling_1d(f_inv, n)
	l_limit = 0.0 : (n-1)
	rand_nos = rand(n) + l_limit
	f_inv.(rand_nos)
end


println(latin_hypercube_sampling_1d(f_inv, n))
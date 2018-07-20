f_inv(x) = log(x)

function latin_hypercube_sampling_1d(f_inv, n)
	l_limit = 0.0 : (n-1)
	rand_nos = rand(n) + l_limit
	f_inv.(rand_nos)
end
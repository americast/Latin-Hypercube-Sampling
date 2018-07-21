f_inv(x) = abs(sin(x))
n = 10
dims = 3

function latin_hypercube_sampling_1d(f_inv, n)
	l_limit = 0.0 : (n-1)
	rand_nos = rand(n) + l_limit
	f_inv.(rand_nos)
end

function latin_hypercube_sampling_nd(f_inv, n, dims)
	l_limit = 0.0 : (n-1)
	value = []
	for i in 1:dims
		push!(value, l_limit + latin_hypercube_sampling_1d(f_inv, n))
	end
	hcat(value...)
end

println(latin_hypercube_sampling_nd(f_inv, n, dims))
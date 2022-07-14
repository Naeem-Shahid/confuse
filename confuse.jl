using ImageFiltering

function panic(state)
    ker = [1.0 1.0 1.0; 1.0 -1.0 1.0; 1.0 1.0 1.0]
    c = imfilter(state, ker, "circular")
    state[c .>= 4] .= 1
    c = imfilter(state, ker, "circular")
    state[c .>= 6] .= 0
    sum(state)
end
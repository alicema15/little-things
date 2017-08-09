
last_n_averages = (n, x, buffer) ->
    i = undefined
    sum_x = undefined
    average_x = x
    buffer.push x
    sum_x = 0
    i = 0
    while i < buffer.length
      sum_x += buffer[i]
      i++
    average_x = sum_x / buffer.length
    if buffer.length > n
        buffer.shift()
    average_x

# detects if moving past a buffer
changing_lots = (x, buffer_num = 10) ->
    x > buffer_num

post_n_sec = (q, tag, message) ->
    setTimeout (->
        $("#gesture").html(message)
    ), (q * 1000)

buffer_alpha = []
buffer_beta = []
buffer_gamma = []
buffer_x = []
buffer_y = []
buffer_z = []

n = 10

orientationStill = true
motionStill = true

average_alpha = []
average_beta = []
average_gamma = []

window.addEventListener 'deviceorientation', (event) ->
    console.log "something happening"

    alpha = event.alpha
    beta = event.beta
    gamma = event.gamma

    $(".testing").html(alpha + "," + beta + "," + gamma)

    average_alpha.push a
    average_beta.push b
    average_gamma.push g

    #last_n_averages(n, gamma, buffer_gamma)

    if average_alpha.length > 2
        average_alpha.shift()
    if average_beta.length > 2
        average_beta.shift()
    if average_gamma.length > 2
        average_gamma.shift()

    # $("#gesture").html("average_alpha: " + (Math.abs average_alpha[0] - average_alpha[1])

    tilt = 25

    if average_beta[0] > tilt
        $("#gesture").html("PITCH++")
        $("#event").html("play")
    else if average_beta[0] < -tilt
        $("#gesture").html("PITCH--")
        $("#event").html("pause")

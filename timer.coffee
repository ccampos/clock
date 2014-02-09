id = null

timer = (whatshouldhappen) ->
    cur = 0

    log = ->
        cur += 1
        console.log '########log', cur
        if cur is 5
            clearInterval id
            rect.on 'mouseover', whatshouldhappen
        return

    id = setInterval log, 1000
    return

activate = ->
    rect.on 'mouseover', null
    timer()
    return

cancelActivate = ->
    clearInterval id
    rect.on 'mouseover', activate
    return

rect.on 'mouseover', activate
rect.on 'mouseout', cancelActivate

# mouseover
# - activate
# - cancel De-Activate

# mouseout
# - deactivate
# - cancel Activate

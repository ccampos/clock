idActivate = null

timerActivate = (limit) ->
    cur = 0

    log = ->
        cur += 1
        console.log '######## activate', cur
        if cur is limit
            clearInterval idActivate
            rect.on 'mouseover.activate', activate
        return

    idActivate = setInterval log, 1000
    return

activate = ->
    rect.on 'mouseover.activate', null
    timerActivate(4)
    return

cancelActivate = ->
    clearInterval idActivate
    rect.on 'mouseover.activate', activate
    return

rect.on 'mouseover.activate', activate
rect.on 'mouseout.cancelActivate', cancelActivate

idDeactivate = null

timerDeactivate = (limit) ->
    cur = 0

    log = ->
        cur += 1
        console.log '******* deactivate', cur
        if cur is limit
            clearInterval idDeactivate
            rect.on 'mouseout.deactivate', deactivate

    idDeactivate = setInterval log, 1000
    return

deactivate = ->
    rect.on 'mouseout.deactivate', null
    timerDeactivate(4)
    return

cancelDeactivate = ->
    clearInterval idDeactivate
    rect.on 'mouseout.deactivate', deactivate
    return

rect.on 'mouseout.deactivate', deactivate
rect.on 'mouseover.cancelDeactivate', cancelDeactivate

# mouseover
# - activate
# - cancel De-Activate

# mouseout
# - deactivate
# - cancel Activate

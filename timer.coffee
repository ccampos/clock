idActivate = null

timerActivate = ->
    cur = 0

    log = ->
        cur += 1
        console.log '######## activate', cur
        if cur is 5
            clearInterval idActivate
            rect.on 'mouseover.activate', activate
        return

    idActivate = setInterval log, 1000
    return

activate = ->
    rect.on 'mouseover.activate', null
    timerActivate()
    return

cancelActivate = ->
    clearInterval idActivate
    rect.on 'mouseover.activate', activate
    return

rect.on 'mouseover.activate', activate
rect.on 'mouseout.cancelActivate', cancelActivate

idDeactivate = null

timerDeactivate = ->
    cur = 0

    log = ->
        cur += 1
        console.log '******* deactivate', cur
        if cur is 5
            clearInterval idDeactivate
            rect.on 'mouseout.deactivate', deactivate

    idDeactivate = setInterval log, 1000
    return

deactivate = ->
    rect.on 'mouseout.deactivate', null
    timerDeactivate()
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

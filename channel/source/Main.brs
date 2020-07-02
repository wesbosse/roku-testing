sub Main()
    print "in showChannelSGScreen"
    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.setMessagePort(m.port)

    scene = screen.CreateScene("home")
    screen.show()

    ' shhh, we are listening for messages
    while(true)
        msg = wait(0, m.port)
        msgType = type(msg)

        if msgType = "roSGScreenEvent"
            ' ight imma head out
            if msg.isScreenClosed() then return
        end if
    end while
end sub


-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new()     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens     local crow_flying_aud171 = audio.loadSound(audioDir .. "crow_flying.mp3", system.ResourceDirectory)     local bitty_audio = audio.loadSound(audioDir .. "click9.mp3", system.ResourceDirectory)     local kwkBindex_audio = audio.loadSound(audioDir .. "indexflip.mp3", system.ResourceDirectory)     --local currPage = 47 
    print("----------------"); print(""); print("New Page") 
    print("The current page is: " .. _G.kwk_currentPage) 

    local path = system.pathForFile( "book.txt", system.DocumentsDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_currentPage )     io.close( file )     local drawScreen = function()        local kwkBback         local kwkBindex         local kwkBforward         local showhide         local bitty         local conrer         local CH03PG1  --(2) regular layer        CH03PG1 = display.newImageRect(imgDir .. "p47_ch03pg1.png", 768, 1024 );        CH03PG1.x = 384; CH03PG1.y = 512; CH03PG1.alpha = 1; CH03PG1.oldAlpha = 1        menuGroup:insert(CH03PG1)        menuGroup.CH03PG1 = CH03PG1        local onconrerTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens() 
                _G.kwk_currentPage = _G.kwk_menuPage
                print("GoToMenu!")
                director:changeScene( "page_" .. _G.kwk_menuPage, "overFromTop" )            end             timerStash.newTimer_857 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        conrer = ui.newButton{            defaultSrc= imgDir .."p47_conrer.png",            defaultX = 45,            defaultY = 43,            overSrc= imgDir .."p47_conrer.png",            overX = 45,            overY = 43,            onRelease=onconrerTouch,            id="conrerButton"        }        conrer.x = 745; conrer.y = 1002; conrer.alpha = 1; conrer.oldAlpha = 1        menuGroup:insert(conrer)        menuGroup.conrer = conrer        local onbittyTouch = function(event)           if event.phase=="ended" then                  if showhide.alpha == 0 then                    transitionStash.newTransition_934 = transition.to( showhide, {alpha=showhide.oldAlpha, time=1000, delay=0})                 else                    transitionStash.newTransition_934 = transition.to( showhide, {alpha=0, time=1000, delay=0})                 end              local myChannel = 3              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( bitty_audio, {channel=myChannel} )              end           end        end --(10) regular layer        bitty = ui.newButton{            defaultSrc= imgDir .."p47_bitty.png",            defaultX = 236,            defaultY = 471,            overSrc= imgDir .."p47_bitty.png",            overX = 236,            overY = 471,            onRelease=onbittyTouch,            id="bittyButton"        }        bitty.x = 159; bitty.y = 435; bitty.alpha = 1; bitty.oldAlpha = 1        menuGroup:insert(bitty)        menuGroup.bitty = bitty --(2) regular layer        showhide = display.newImageRect(imgDir .. "p47_showhide.png", 412, 297 );        showhide.x = 424; showhide.y = 393; showhide.alpha = 1; showhide.oldAlpha = 1        menuGroup:insert(showhide)        menuGroup.showhide = showhide        local onkwkBforwardTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens() 
                print("GoForward!")
                _G.kwk_currentPage = _G.kwk_currentPage + 1
                director:changeScene( "page_" .. _G.kwk_currentPage, "moveFromRight" )             end             timerStash.newTimer_994 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBforward = ui.newButton{            defaultSrc= imgDir .."kwkbforward.png",            defaultX = 110,            defaultY = 87,            overSrc= imgDir .."kwkbforward.png",            overX = 110,            overY = 87,            onRelease=onkwkBforwardTouch,            id="kwkBforwardButton"        }        kwkBforward.x = 476; kwkBforward.y = 975; kwkBforward.alpha = 1; kwkBforward.oldAlpha = 1        menuGroup:insert(kwkBforward)        menuGroup.kwkBforward = kwkBforward        local onkwkBindexTouch = function(event)           if event.phase=="ended" then               local myChannel = 4              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( kwkBindex_audio, {channel=myChannel} )              end             local myClosure_switch = function()                 disposeAudios()                 disposeTweens() 
                _G.kwk_currentPage = _G.kwk_menuPage
                print("GoToMenu!")
                director:changeScene( "page_" .. _G.kwk_menuPage, "overFromTop" )             end             timerStash.newTimer_058 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBindex = ui.newButton{            defaultSrc= imgDir .."kwkbindex.png",            defaultX = 66,            defaultY = 69,            overSrc= imgDir .."kwkbindex.png",            overX = 66,            overY = 69,            onRelease=onkwkBindexTouch,            id="kwkBindexButton"        }        kwkBindex.x = 383; kwkBindex.y = 969; kwkBindex.alpha = 1; kwkBindex.oldAlpha = 1        menuGroup:insert(kwkBindex)        menuGroup.kwkBindex = kwkBindex        local onkwkBbackTouch = function(event) 
          if event.phase=="ended" then            local myClosure_switch = function()                 disposeAudios()                 disposeTweens() 
                print("GoBack!")
                _G.kwk_currentPage = _G.kwk_currentPage - 1
                director:changeScene( "page_" .. _G.kwk_currentPage, "moveFromLeft" )             end             timerStash.newTimer_094 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBback = ui.newButton{            defaultSrc= imgDir .."kwkbback.png",            defaultX = 111,            defaultY = 88,            overSrc= imgDir .."kwkbback.png",            overX = 111,            overY = 88,            onRelease=onkwkBbackTouch,            id="kwkBbackButton"        }        kwkBback.x = 293; kwkBback.y = 973; kwkBback.alpha = 1; kwkBback.oldAlpha = 1        menuGroup:insert(kwkBback)        menuGroup.kwkBback = kwkBback        showhide.alpha = 0        local function flip (event)           local spacer = 180            if event.phase =="ended" then               if event.xStart < event.x and (event.x - event.xStart) >= spacer then                 if (_G.kwk_currentPage > 1) then                      disposeAudios()                     disposeTweens()                     director:changeScene( "page_" .. _G.kwk_currentPage-1 .. ".lua", "moveFromLeft" )                 end              elseif event.xStart > event.x and (event.xStart-event.x) >= spacer then                  if (_G.kwk_currentPage < _G.kwk_lastPage) then                      disposeAudios()                     disposeTweens()                     director:changeScene("page_" .. _G.kwk_currentPage+1 .. ".lua", "moveFromRight")                 end              end           end        end        CH03PG1:addEventListener("touch", flip)    end    drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(crow_flying_aud171); crow_flying_aud171 =nil       audio.stop(3); audio.dispose(bitty_audio); bitty_audio = nil                           audio.stop(4); audio.dispose(kwkBindex_audio); kwkBindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    local myClosure_crow_flying_aud171 = function()       audio.play(crow_flying_aud171, {  channel=2, loops=0, fadein=500 } )    end    timerStash.newTimer_171 = timer.performWithDelay(0, myClosure_crow_flying_aud171, 1)    return menuGroup end 
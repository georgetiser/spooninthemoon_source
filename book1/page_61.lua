-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new()     local numPages = 114     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens     local ant_audio = audio.loadSound(audioDir.."click9.mp3" )     local kwkBindex_audio = audio.loadSound(audioDir.."indexflip.mp3" )     local curPage = 61 
    print("The deprecated curPage is:" .. curPage) 
    print("The current page is: " .. _G.kwk_currentPage) 
    local path = system.pathForFile( "book.txt", system.DocumentsDirectory )     local file = io.open( path, "w+" )     file:write( curPage )     io.close( file )     local drawScreen = function()        local kwkBback         local kwkBindex         local kwkBforward         local showhide         local ant         local papercorner         local CH04PG2  --(2) regular layer        CH04PG2 = display.newImageRect( imgDir.. "p61_ch04pg2.png", 768, 1024 );        CH04PG2.x = 384; CH04PG2.y = 512; CH04PG2.alpha = 1; CH04PG2.oldAlpha = 1        menuGroup:insert(CH04PG2)        menuGroup.CH04PG2 = CH04PG2        local onpapercornerTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeTweens() 
                _G.kwk_currentPage = 2
                print("GoToMenu!")
                director:changeScene( "page_2", "fade" )            end             timerStash.newTimer_384 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        papercorner = ui.newButton{            defaultSrc=imgDir.."p61_papercorner.png",            defaultX = 72,            defaultY = 80,            overSrc=imgDir.."p61_papercorner.png",            overX = 72,            overY = 80,            onRelease=onpapercornerTouch,            id="papercornerButton"        }        papercorner.x = 732; papercorner.y = 984; papercorner.alpha = 1; papercorner.oldAlpha = 1        menuGroup:insert(papercorner)        menuGroup.papercorner = papercorner        local onantTouch = function(event)           if event.phase=="ended" then                  if showhide.alpha == 0 then                    transitionStash.newTransition_444 = transition.to( showhide, {alpha=showhide.oldAlpha, time=1000, delay=0})                 else                    transitionStash.newTransition_444 = transition.to( showhide, {alpha=0, time=1000, delay=0})                 end              local myChannel = 2              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( ant_audio, {channel=myChannel} )              end           end        end --(10) regular layer        ant = ui.newButton{            defaultSrc=imgDir.."p61_ant.png",            defaultX = 87,            defaultY = 290,            overSrc=imgDir.."p61_ant.png",            overX = 87,            overY = 290,            onRelease=onantTouch,            id="antButton"        }        ant.x = 724; ant.y = 353; ant.alpha = 1; ant.oldAlpha = 1        menuGroup:insert(ant)        menuGroup.ant = ant --(2) regular layer        showhide = display.newImageRect( imgDir.. "p61_showhide.png", 349, 252 );        showhide.x = 556; showhide.y = 333; showhide.alpha = 1; showhide.oldAlpha = 1        menuGroup:insert(showhide)        menuGroup.showhide = showhide        local onkwkBforwardTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens() 
                print("GoForward!")
                _G.kwk_currentPage = _G.kwk_currentPage + 1
                director:changeScene( "page_" .. _G.kwk_currentPage, "moveFromRight" )             end             timerStash.newTimer_504 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBforward = ui.newButton{            defaultSrc=imgDir.."kwkbforward.png",            defaultX = 110,            defaultY = 87,            overSrc=imgDir.."kwkbforward.png",            overX = 110,            overY = 87,            onRelease=onkwkBforwardTouch,            id="kwkBforwardButton"        }        kwkBforward.x = 476; kwkBforward.y = 975; kwkBforward.alpha = 1; kwkBforward.oldAlpha = 1        menuGroup:insert(kwkBforward)        menuGroup.kwkBforward = kwkBforward        local onkwkBindexTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens() 
                _G.kwk_currentPage = 2
                print("GoToMenu!")
                director:changeScene( "page_2", "overFromTop" )             end             timerStash.newTimer_565 = timer.performWithDelay(0, myClosure_switch, 1)              local myChannel = 3              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( kwkBindex_audio, {channel=myChannel} )              end           end        end --(10) regular layer        kwkBindex = ui.newButton{            defaultSrc=imgDir.."kwkbindex.png",            defaultX = 66,            defaultY = 69,            overSrc=imgDir.."kwkbindex.png",            overX = 66,            overY = 69,            onRelease=onkwkBindexTouch,            id="kwkBindexButton"        }        kwkBindex.x = 383; kwkBindex.y = 969; kwkBindex.alpha = 1; kwkBindex.oldAlpha = 1        menuGroup:insert(kwkBindex)        menuGroup.kwkBindex = kwkBindex        local onkwkBbackTouch = function(event) 
          if event.phase=="ended" then            local myClosure_switch = function()                 disposeAudios()                 disposeTweens() 
                print("GoBack!")
                _G.kwk_currentPage = _G.kwk_currentPage - 1
                director:changeScene( "page_" .. _G.kwk_currentPage, "moveFromLeft" )             end             timerStash.newTimer_604 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBback = ui.newButton{            defaultSrc=imgDir.."kwkbback.png",            defaultX = 111,            defaultY = 88,            overSrc=imgDir.."kwkbback.png",            overX = 111,            overY = 88,            onRelease=onkwkBbackTouch,            id="kwkBbackButton"        }        kwkBback.x = 293; kwkBback.y = 973; kwkBback.alpha = 1; kwkBback.oldAlpha = 1        menuGroup:insert(kwkBback)        menuGroup.kwkBback = kwkBback        showhide.alpha = 0        local function flip (event)           local spacer = 180            if event.phase =="ended" then               if event.xStart < event.x and (event.x - event.xStart) >= spacer then                 if (curPage > 1) then                      disposeAudios()                     disposeTweens()                     director:changeScene( "page_" .. curPage-1 .. ".lua", "moveFromLeft" )                 end              elseif event.xStart > event.x and (event.xStart-event.x) >= spacer then                  if (curPage < numPages) then                      disposeAudios()                     disposeTweens()                     director:changeScene("page_" .. curPage+1 .. ".lua", "moveFromRight")                 end              end           end        end        CH04PG2:addEventListener("touch", flip)    end    drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(ant_audio); ant_audio = nil                           audio.stop(3); audio.dispose(kwkBindex_audio); kwkBindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    return menuGroup end 
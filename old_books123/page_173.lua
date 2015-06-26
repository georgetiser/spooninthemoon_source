-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new()     local numPages = 330     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens     local wings_audio = audio.loadSound(audioDir.."wings.mp3" )     local catfish_audio = audio.loadSound(audioDir.."click9.mp3" )     local kwkBindex_audio = audio.loadSound(audioDir.."indexflip.mp3" )     local curPage = 173     local path = system.pathForFile( "book.txt", system.DocumentsDirectory )     local file = io.open( path, "w+" )     file:write( curPage )     io.close( file )     local drawScreen = function()        local kwkBback         local kwkBindex         local kwkBforward         local papercorner         local showhide         local catfish         local wings         local CH11PG14  --(2) regular layer        CH11PG14 = display.newImageRect( imgDir.. "p173_ch11pg14.png", 768, 1024 );        CH11PG14.x = 384; CH11PG14.y = 512; CH11PG14.alpha = 1; CH11PG14.oldAlpha = 1        menuGroup:insert(CH11PG14)        menuGroup.CH11PG14 = CH11PG14        local onwingsTouch = function(event)           if event.phase=="ended" then               local myChannel = 2              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( wings_audio, {channel=myChannel} )              end           end        end --(10) regular layer        wings = ui.newButton{            defaultSrc=imgDir.."p173_wings.png",            defaultX = 434,            defaultY = 54,            overSrc=imgDir.."p173_wings.png",            overX = 434,            overY = 54,            onRelease=onwingsTouch,            id="wingsButton"        }        wings.x = 321; wings.y = 678; wings.alpha = 1; wings.oldAlpha = 1        menuGroup:insert(wings)        menuGroup.wings = wings        local oncatfishTouch = function(event)           if event.phase=="ended" then                  if showhide.alpha == 0 then                    transitionStash.newTransition_279 = transition.to( showhide, {alpha=showhide.oldAlpha, time=1000, delay=0})                 else                    transitionStash.newTransition_279 = transition.to( showhide, {alpha=0, time=1000, delay=0})                 end              local myChannel = 3              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( catfish_audio, {channel=myChannel} )              end           end        end --(10) regular layer        catfish = ui.newButton{            defaultSrc=imgDir.."p173_catfish.png",            defaultX = 615,            defaultY = 192,            overSrc=imgDir.."p173_catfish.png",            overX = 615,            overY = 192,            onRelease=oncatfishTouch,            id="catfishButton"        }        catfish.x = 400; catfish.y = 128; catfish.alpha = 1; catfish.oldAlpha = 1        menuGroup:insert(catfish)        menuGroup.catfish = catfish --(2) regular layer        showhide = display.newImageRect( imgDir.. "p173_showhide.png", 513, 177 );        showhide.x = 318; showhide.y = 264; showhide.alpha = 1; showhide.oldAlpha = 1        menuGroup:insert(showhide)        menuGroup.showhide = showhide        local onpapercornerTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_2", "fade" )             end             timerStash.newTimer_415 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        papercorner = ui.newButton{            defaultSrc=imgDir.."p173_papercorner.png",            defaultX = 72,            defaultY = 80,            overSrc=imgDir.."p173_papercorner.png",            overX = 72,            overY = 80,            onRelease=onpapercornerTouch,            id="papercornerButton"        }        papercorner.x = 732; papercorner.y = 984; papercorner.alpha = 1; papercorner.oldAlpha = 1        menuGroup:insert(papercorner)        menuGroup.papercorner = papercorner        local onkwkBforwardTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_174", "moveFromRight" )             end             timerStash.newTimer_449 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBforward = ui.newButton{            defaultSrc=imgDir.."kwkbforward.png",            defaultX = 110,            defaultY = 87,            overSrc=imgDir.."kwkbforward.png",            overX = 110,            overY = 87,            onRelease=onkwkBforwardTouch,            id="kwkBforwardButton"        }        kwkBforward.x = 476; kwkBforward.y = 975; kwkBforward.alpha = 1; kwkBforward.oldAlpha = 1        menuGroup:insert(kwkBforward)        menuGroup.kwkBforward = kwkBforward        local onkwkBindexTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_2", "overFromTop" )             end             timerStash.newTimer_511 = timer.performWithDelay(0, myClosure_switch, 1)              local myChannel = 4              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( kwkBindex_audio, {channel=myChannel} )              end           end        end --(10) regular layer        kwkBindex = ui.newButton{            defaultSrc=imgDir.."kwkbindex.png",            defaultX = 66,            defaultY = 69,            overSrc=imgDir.."kwkbindex.png",            overX = 66,            overY = 69,            onRelease=onkwkBindexTouch,            id="kwkBindexButton"        }        kwkBindex.x = 383; kwkBindex.y = 969; kwkBindex.alpha = 1; kwkBindex.oldAlpha = 1        menuGroup:insert(kwkBindex)        menuGroup.kwkBindex = kwkBindex        local onkwkBbackTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_172", "moveFromLeft" )             end             timerStash.newTimer_600 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBback = ui.newButton{            defaultSrc=imgDir.."kwkbback.png",            defaultX = 111,            defaultY = 88,            overSrc=imgDir.."kwkbback.png",            overX = 111,            overY = 88,            onRelease=onkwkBbackTouch,            id="kwkBbackButton"        }        kwkBback.x = 293; kwkBback.y = 973; kwkBback.alpha = 1; kwkBback.oldAlpha = 1        menuGroup:insert(kwkBback)        menuGroup.kwkBback = kwkBback        showhide.alpha = 0          local function flip (event)           local spacer = 180            if event.phase =="ended" then               if event.xStart < event.x and (event.x - event.xStart) >= spacer then                 if (curPage > 1) then                      disposeAudios()                     disposeTweens()                     director:changeScene( "page_"..curPage-1, "moveFromLeft" )                 end              elseif event.xStart > event.x and (event.xStart-event.x) >= spacer then                  if (curPage < numPages) then                      disposeAudios()                     disposeTweens()                     director:changeScene("page_"..curPage+1, "moveFromRight")                 end              end           end        end        CH11PG14:addEventListener("touch", flip)    end    drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(wings_audio); wings_audio = nil                           audio.stop(3); audio.dispose(catfish_audio); catfish_audio = nil                           audio.stop(4); audio.dispose(kwkBindex_audio); kwkBindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    return menuGroup end 
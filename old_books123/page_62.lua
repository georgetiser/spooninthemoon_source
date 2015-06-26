-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new()     local numPages = 330     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens     local bottle_audio = audio.loadSound(audioDir.."mouthpop2.mp3" )     local kwkBindex_audio = audio.loadSound(audioDir.."indexflip.mp3" )     local curPage = 62     local path = system.pathForFile( "book.txt", system.DocumentsDirectory )     local file = io.open( path, "w+" )     file:write( curPage )     io.close( file )     local drawScreen = function()        local kwkBback         local kwkBindex         local kwkBforward         local bottle         local papercorner         local CH04PG3  --(2) regular layer        CH04PG3 = display.newImageRect( imgDir.. "p62_ch04pg3.png", 768, 1024 );        CH04PG3.x = 384; CH04PG3.y = 512; CH04PG3.alpha = 1; CH04PG3.oldAlpha = 1        menuGroup:insert(CH04PG3)        menuGroup.CH04PG3 = CH04PG3        local onpapercornerTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeTweens()                 director:changeScene( "page_2", "fade" )             end             timerStash.newTimer_744 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        papercorner = ui.newButton{            defaultSrc=imgDir.."p62_papercorner.png",            defaultX = 47,            defaultY = 51,            overSrc=imgDir.."p62_papercorner.png",            overX = 47,            overY = 51,            onRelease=onpapercornerTouch,            id="papercornerButton"        }        papercorner.x = 744; papercorner.y = 998; papercorner.alpha = 1; papercorner.oldAlpha = 1        menuGroup:insert(papercorner)        menuGroup.papercorner = papercorner        local onbottleTouch = function(event)           if event.phase=="ended" then               local myChannel = 2              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( bottle_audio, {channel=myChannel} )              end           end        end --(10) regular layer        bottle = ui.newButton{            defaultSrc=imgDir.."p62_bottle.png",            defaultX = 266,            defaultY = 596,            overSrc=imgDir.."p62_bottle.png",            overX = 266,            overY = 596,            onRelease=onbottleTouch,            id="bottleButton"        }        bottle.x = 571; bottle.y = 516; bottle.alpha = 1; bottle.oldAlpha = 1        menuGroup:insert(bottle)        menuGroup.bottle = bottle        local onkwkBforwardTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_63", "moveFromRight" )             end             timerStash.newTimer_839 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBforward = ui.newButton{            defaultSrc=imgDir.."kwkbforward.png",            defaultX = 110,            defaultY = 87,            overSrc=imgDir.."kwkbforward.png",            overX = 110,            overY = 87,            onRelease=onkwkBforwardTouch,            id="kwkBforwardButton"        }        kwkBforward.x = 476; kwkBforward.y = 975; kwkBforward.alpha = 1; kwkBforward.oldAlpha = 1        menuGroup:insert(kwkBforward)        menuGroup.kwkBforward = kwkBforward        local onkwkBindexTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_2", "overFromTop" )             end             timerStash.newTimer_901 = timer.performWithDelay(0, myClosure_switch, 1)              local myChannel = 3              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( kwkBindex_audio, {channel=myChannel} )              end           end        end --(10) regular layer        kwkBindex = ui.newButton{            defaultSrc=imgDir.."kwkbindex.png",            defaultX = 66,            defaultY = 69,            overSrc=imgDir.."kwkbindex.png",            overX = 66,            overY = 69,            onRelease=onkwkBindexTouch,            id="kwkBindexButton"        }        kwkBindex.x = 383; kwkBindex.y = 969; kwkBindex.alpha = 1; kwkBindex.oldAlpha = 1        menuGroup:insert(kwkBindex)        menuGroup.kwkBindex = kwkBindex        local onkwkBbackTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_61", "moveFromLeft" )             end             timerStash.newTimer_965 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBback = ui.newButton{            defaultSrc=imgDir.."kwkbback.png",            defaultX = 111,            defaultY = 88,            overSrc=imgDir.."kwkbback.png",            overX = 111,            overY = 88,            onRelease=onkwkBbackTouch,            id="kwkBbackButton"        }        kwkBback.x = 293; kwkBback.y = 973; kwkBback.alpha = 1; kwkBback.oldAlpha = 1        menuGroup:insert(kwkBback)        menuGroup.kwkBback = kwkBback          local function flip (event)           local spacer = 180            if event.phase =="ended" then               if event.xStart < event.x and (event.x - event.xStart) >= spacer then                 if (curPage > 1) then                      disposeAudios()                     disposeTweens()                     director:changeScene( "page_"..curPage-1, "moveFromLeft" )                 end              elseif event.xStart > event.x and (event.xStart-event.x) >= spacer then                  if (curPage < numPages) then                      disposeAudios()                     disposeTweens()                     director:changeScene("page_"..curPage+1, "moveFromRight")                 end              end           end        end        CH04PG3:addEventListener("touch", flip)    end    drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(bottle_audio); bottle_audio = nil                           audio.stop(3); audio.dispose(kwkBindex_audio); kwkBindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    return menuGroup end 
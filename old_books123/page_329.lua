-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new()     local numPages = 330     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens     local SPOONANDTHEMOON_audio = audio.loadSound(audioDir.."click4.mp3" )     local linktest_audio = audio.loadSound(audioDir.."click4.mp3" )     local twitter_audio = audio.loadSound(audioDir.."click8.mp3" )     local motes_audio = audio.loadSound(audioDir.."click5.mp3" )     local amazon_audio = audio.loadSound(audioDir.."click7.mp3" )     local vblink_audio = audio.loadSound(audioDir.."click9.mp3" )     local cjlink_audio = audio.loadSound(audioDir.."click8.mp3" )     local curPage = 329     local path = system.pathForFile( "book.txt", system.DocumentsDirectory )     local file = io.open( path, "w+" )     file:write( curPage )     io.close( file )     local drawScreen = function()        local kwkBforward         local kwkBback         local kwkBindex         local cjlink         local vblink         local amazon         local motes         local twitter         local linktest         local papercorner         local SPOONANDTHEMOON         local aniNovelby         local BGcopy         local audi         local BG  --(2) regular layer        BG = display.newImageRect( imgDir.. "p329_bg.png", 768, 1025 );        BG.x = 384; BG.y = 511; BG.alpha = 1; BG.oldAlpha = 1        menuGroup:insert(BG)        menuGroup.BG = BG        local onaudiTouch = function(event)           if event.phase=="ended" then                  system.openURL( "http://audiomicro.com" )           end        end --(10) regular layer        audi = ui.newButton{            defaultSrc=imgDir.."p329_audi.png",            defaultX = 116,            defaultY = 20,            overSrc=imgDir.."p329_audi.png",            overX = 116,            overY = 20,            onRelease=onaudiTouch,            id="audiButton"        }        audi.x = 192; audi.y = 414; audi.alpha = 1; audi.oldAlpha = 1        menuGroup:insert(audi)        menuGroup.audi = audi --(2) regular layer        BGcopy = display.newImageRect( imgDir.. "p329_bgcopy.png", 768, 1025 );        BGcopy.x = 336; BGcopy.y = 511; BGcopy.alpha = 1; BGcopy.oldAlpha = 1        menuGroup:insert(BGcopy)        menuGroup.BGcopy = BGcopy --(2) regular layer        aniNovelby = display.newImageRect( imgDir.. "p329_aninovelby.png", 107, 20 );        aniNovelby.x = 275; aniNovelby.y = 729; aniNovelby.alpha = 1; aniNovelby.oldAlpha = 1        menuGroup:insert(aniNovelby)        menuGroup.aniNovelby = aniNovelby        local onSPOONANDTHEMOONTouch = function(event)           if event.phase=="ended" then               local myChannel = 2              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( SPOONANDTHEMOON_audio, {channel=myChannel} )              end                 system.openURL( "http://spoon-and-the-moon.com/" )           end        end --(10) regular layer        SPOONANDTHEMOON = ui.newButton{            defaultSrc=imgDir.."p329_spoonandthemoon.png",            defaultX = 160,            defaultY = 24,            overSrc=imgDir.."p329_spoonandthemoon.png",            overX = 160,            overY = 24,            onRelease=onSPOONANDTHEMOONTouch,            id="SPOONANDTHEMOONButton"        }        SPOONANDTHEMOON.x = 268; SPOONANDTHEMOON.y = 767; SPOONANDTHEMOON.alpha = 1; SPOONANDTHEMOON.oldAlpha = 1        menuGroup:insert(SPOONANDTHEMOON)        menuGroup.SPOONANDTHEMOON = SPOONANDTHEMOON        local onpapercornerTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_2", "fade" )             end             timerStash.newTimer_672 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        papercorner = ui.newButton{            defaultSrc=imgDir.."p329_papercorner.png",            defaultX = 72,            defaultY = 80,            overSrc=imgDir.."p329_papercorner.png",            overX = 72,            overY = 80,            onRelease=onpapercornerTouch,            id="papercornerButton"        }        papercorner.x = 732; papercorner.y = 984; papercorner.alpha = 1; papercorner.oldAlpha = 1        menuGroup:insert(papercorner)        menuGroup.papercorner = papercorner        local onlinktestTouch = function(event)           if event.phase=="ended" then                  system.openURL( "http://www.facebook.com/pages/Spoon-and-the-Moon-A-Naughty-Fairytale/188499084542341" )              local myChannel = 2              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( linktest_audio, {channel=myChannel} )              end           end        end --(10) regular layer        linktest = ui.newButton{            defaultSrc=imgDir.."p329_linktest.png",            defaultX = 202,            defaultY = 34,            overSrc=imgDir.."p329_linktest.png",            overX = 202,            overY = 34,            onRelease=onlinktestTouch,            id="linktestButton"        }        linktest.x = 228; linktest.y = 584; linktest.alpha = 1; linktest.oldAlpha = 1        menuGroup:insert(linktest)        menuGroup.linktest = linktest        local ontwitterTouch = function(event)           if event.phase=="ended" then               local myChannel = 4              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( twitter_audio, {channel=myChannel} )              end                 system.openURL( "http://twitter.com/#!/spoonandthemoon" )           end        end --(10) regular layer        twitter = ui.newButton{            defaultSrc=imgDir.."p329_twitter.png",            defaultX = 178,            defaultY = 33,            overSrc=imgDir.."p329_twitter.png",            overX = 178,            overY = 33,            onRelease=ontwitterTouch,            id="twitterButton"        }        twitter.x = 569; twitter.y = 581; twitter.alpha = 1; twitter.oldAlpha = 1        menuGroup:insert(twitter)        menuGroup.twitter = twitter        local onmotesTouch = function(event)           if event.phase=="ended" then                  system.openURL( "http://motesbooks.com" )              local myChannel = 5              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( motes_audio, {channel=myChannel} )              end           end        end --(10) regular layer        motes = ui.newButton{            defaultSrc=imgDir.."p329_motes.png",            defaultX = 108,            defaultY = 12,            overSrc=imgDir.."p329_motes.png",            overX = 108,            overY = 12,            onRelease=onmotesTouch,            id="motesButton"        }        motes.x = 564; motes.y = 475; motes.alpha = 1; motes.oldAlpha = 1        menuGroup:insert(motes)        menuGroup.motes = motes        local onamazonTouch = function(event)           if event.phase=="ended" then                  system.openURL( "http://www.amazon.com/Diddle-naughty-delight-lesbians-grownups/dp/1934894095" )              local myChannel = 6              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( amazon_audio, {channel=myChannel} )              end           end        end --(10) regular layer        amazon = ui.newButton{            defaultSrc=imgDir.."p329_amazon.png",            defaultX = 78,            defaultY = 12,            overSrc=imgDir.."p329_amazon.png",            overX = 78,            overY = 12,            onRelease=onamazonTouch,            id="amazonButton"        }        amazon.x = 430; amazon.y = 475; amazon.alpha = 1; amazon.oldAlpha = 1        menuGroup:insert(amazon)        menuGroup.amazon = amazon        local onvblinkTouch = function(event)           if event.phase=="ended" then                  system.openURL( "http://videobred.com" )              local myChannel = 7              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( vblink_audio, {channel=myChannel} )              end           end        end --(10) regular layer        vblink = ui.newButton{            defaultSrc=imgDir.."p329_vblink.png",            defaultX = 64,            defaultY = 12,            overSrc=imgDir.."p329_vblink.png",            overX = 64,            overY = 12,            onRelease=onvblinkTouch,            id="vblinkButton"        }        vblink.x = 173; vblink.y = 252; vblink.alpha = 1; vblink.oldAlpha = 1        menuGroup:insert(vblink)        menuGroup.vblink = vblink        local oncjlinkTouch = function(event)           if event.phase=="ended" then                  system.openURL( "http://squarerhino.com/" )              local myChannel = 4              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( cjlink_audio, {channel=myChannel} )              end           end        end --(10) regular layer        cjlink = ui.newButton{            defaultSrc=imgDir.."p329_cjlink.png",            defaultX = 90,            defaultY = 12,            overSrc=imgDir.."p329_cjlink.png",            overX = 90,            overY = 12,            onRelease=oncjlinkTouch,            id="cjlinkButton"        }        cjlink.x = 186; cjlink.y = 139; cjlink.alpha = 1; cjlink.oldAlpha = 1        menuGroup:insert(cjlink)        menuGroup.cjlink = cjlink        local onkwkBindexTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_2", "overFromTop" )             end             timerStash.newTimer_590 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBindex = ui.newButton{            defaultSrc=imgDir.."kwkbindex.png",            defaultX = 66,            defaultY = 69,            overSrc=imgDir.."kwkbindex.png",            overX = 66,            overY = 69,            onRelease=onkwkBindexTouch,            id="kwkBindexButton"        }        kwkBindex.x = 383; kwkBindex.y = 969; kwkBindex.alpha = 1; kwkBindex.oldAlpha = 1        menuGroup:insert(kwkBindex)        menuGroup.kwkBindex = kwkBindex        local onkwkBbackTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_328", "moveFromLeft" )             end             timerStash.newTimer_674 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBback = ui.newButton{            defaultSrc=imgDir.."kwkbback.png",            defaultX = 111,            defaultY = 88,            overSrc=imgDir.."kwkbback.png",            overX = 111,            overY = 88,            onRelease=onkwkBbackTouch,            id="kwkBbackButton"        }        kwkBback.x = 293; kwkBback.y = 973; kwkBback.alpha = 1; kwkBback.oldAlpha = 1        menuGroup:insert(kwkBback)        menuGroup.kwkBback = kwkBback        local onkwkBforwardTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_330", "moveFromRight" )             end             timerStash.newTimer_782 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBforward = ui.newButton{            defaultSrc=imgDir.."kwkbforward.png",            defaultX = 110,            defaultY = 87,            overSrc=imgDir.."kwkbforward.png",            overX = 110,            overY = 87,            onRelease=onkwkBforwardTouch,            id="kwkBforwardButton"        }        kwkBforward.x = 476; kwkBforward.y = 972; kwkBforward.alpha = 1; kwkBforward.oldAlpha = 1        menuGroup:insert(kwkBforward)        menuGroup.kwkBforward = kwkBforward          local function flip (event)           local spacer = 180            if event.phase =="ended" then               if event.xStart < event.x and (event.x - event.xStart) >= spacer then                 if (curPage > 1) then                      disposeAudios()                     disposeTweens()                     director:changeScene( "page_"..curPage-1, "moveFromLeft" )                 end              elseif event.xStart > event.x and (event.xStart-event.x) >= spacer then                  if (curPage < numPages) then                      disposeAudios()                     disposeTweens()                     director:changeScene("page_"..curPage+1, "moveFromRight")                 end              end           end        end        BG:addEventListener("touch", flip)    end    drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(SPOONANDTHEMOON_audio); SPOONANDTHEMOON_audio = nil                           audio.stop(2); audio.dispose(linktest_audio); linktest_audio = nil                           audio.stop(4); audio.dispose(twitter_audio); twitter_audio = nil                           audio.stop(5); audio.dispose(motes_audio); motes_audio = nil                           audio.stop(6); audio.dispose(amazon_audio); amazon_audio = nil                           audio.stop(7); audio.dispose(vblink_audio); vblink_audio = nil                           audio.stop(4); audio.dispose(cjlink_audio); cjlink_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    return menuGroup end 
-- Code created by Kwik - Copyright: kwiksher.com -- Version: 2.4.6 module(..., package.seeall)  function new()     local menuGroup = display.newGroup()     local viloin_audio = audio.loadSound(audioDir .. "v16.mp3", system.ResourceDirectory)     statusreport.debugPrint("----------------"); statusreport.debugPrint(""); statusreport.debugPrint("New Page")     statusreport.debugPrint("The current page is: " .. _G.kwk_currentPage)     local path = system.pathForFile( "SpoonAndTheMoonPart1.txt", system.CachesDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_currentPage )     io.close( file )   local drawScreen = function()
		navigation.DisplayDevelopmentVersion()
		menuGroup.navigator = navigation.InsertNavigation{}
       local viloin         local BG         BG = display.newImageRect(imageDir .. "p82_ch05pg13.png", 768, 1024 );        BG.x = 384; BG.y = 512; BG.alpha = 1; BG.oldAlpha = 1        menuGroup:insert(BG)        menuGroup.BG = BG        local onviloinTouch = function(event)           if event.phase=="ended" then               local myChannel = 2              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( viloin_audio, {channel=myChannel} )              end           end        end        viloin = ui.newButton{            defaultSrc= imageDir .."p82_viloin.png",            defaultX = 140,            defaultY = 568,            overSrc= imageDir .."p82_viloin.png",            overX = 140,            overY = 568,            onRelease=onviloinTouch,            id="viloinButton"        }        viloin.x = 622; viloin.y = 419; viloin.alpha = 1; viloin.oldAlpha = 1        menuGroup:insert(viloin)        menuGroup.viloin = viloin
	end
   drawScreen()    return menuGroup end 
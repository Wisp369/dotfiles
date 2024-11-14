return{
  "goolord/alpha-nvim",

  config = function()
    local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val =  {
	"                             .                                   ",
	"                          ,''`.         _                        ",
	"                     ,.,'''  '`--- ._,,'|                        ",
	"                   ,'                   /                        ",
	"              __.-'                    |                         ",
	"           ''                ___   ___ |                         ",
	"         ,'                  \\(|\\ /|)/ |                         ",
	"        ,'                 _     _     `._                       ",
	"       /     ,.......-\\    `.      __     `-.                    ",
	"      /     ,' :  .:''`|    `:`.../:.`` ._   `._                 ",
	"  ,..,'  _/' .: :'     |     |      '.    \\.    \\                ",
	" /      ,'  :'.:  / \\  |     | / \\   ':.  . \\    \\               ",
	"|      /  .: :' ,'  _)  \".._,;'  _)    :. :. \\    |              ",
	" |     | :'.:  /   |   .,   /   |       :  :  |   |              ",
	" |     |:' :  /____|  /  \\ /____|       :  :  |  ,'              ",
	"  |   /    '         /    \\            :'   : |,/                ",
	"   \\ |  '_          /______\\              , : |                  ",
	"  _/ |  \\'`--`.    _            ,_   ,-'''  :.|         __       ",
	" /   |   \\..   ` ./ `.   _,_  ,'  ``'  /'   :'|      _,''/       ",
	"/   /'. :   \\.   _    [_]   `[_]  .__,,|   _....,--=/'  /:       ",
	"|   \\_| :    `.-' `.    _.._     /     . ,'  :. ':/'  /'  `.     ",
	"`.   '`'`.         `. ,.'   ` .,'     :'/ ':..':.    |  .:' `.   ",
	"  \\.      \\          '               :' |    ''''      ''     `. ",
	"    `''.   `|        ':     .      .:' ,|         .  ..':.      |",
	"      /'   / '\"-..._  :   .:'    _;:.,'  \\.     .:'   :. ''.    |",
	"     (._,.'        '`''''''''''''          \\.._.:      ':  ':   /",
	"________                                      '`- ._    ,:__,,-' ",
	"  |ooShy                                            ``''         "
  }

  dashboard.section.footer.val = {
      "Be gay do crime :3"
  }
		alpha.setup(dashboard.opts)
	end,
}

-- automatically generated file. Do not edit (see /usr/share/doc/menu/html)

local awesome = awesome

Debian_menu = {}

Debian_menu["Debian_Aplicaciones_Ciencia_Matemáticas"] = {
	{"Bc", "x-terminal-emulator -e ".."/usr/bin/bc"},
	{"Dc", "x-terminal-emulator -e ".."/usr/bin/dc"},
}
Debian_menu["Debian_Aplicaciones_Ciencia"] = {
	{ "Matemáticas", Debian_menu["Debian_Aplicaciones_Ciencia_Matemáticas"] },
}
Debian_menu["Debian_Aplicaciones_Consolas"] = {
	{"Bash", "x-terminal-emulator -e ".."/bin/bash --login"},
	{"Dash", "x-terminal-emulator -e ".."/bin/dash -i"},
	{"Sh", "x-terminal-emulator -e ".."/bin/sh --login"},
}
Debian_menu["Debian_Aplicaciones"] = {
	{ "Ciencia", Debian_menu["Debian_Aplicaciones_Ciencia"] },
	{ "Consolas", Debian_menu["Debian_Aplicaciones_Consolas"] },
}
Debian_menu["Debian_Gestores_de_ventanas"] = {
	{"awesome",function () awesome.exec("/usr/bin/awesome") end,"/usr/share/pixmaps/awesome.xpm"},
}
Debian_menu["Debian"] = {
	{ "Aplicaciones", Debian_menu["Debian_Aplicaciones"] },
	{ "Gestores de ventanas", Debian_menu["Debian_Gestores_de_ventanas"] },
}

debian = { menu = { Debian_menu = Debian_menu } }
return debian
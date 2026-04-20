# Lucas Mod Launcher Lua
[Lua Language Server](https://luals.github.io/) definitions for Custom Files Lua Functions in [Lucas' Simpsons Hit & Run Mod Launcher](https://modbakery.donutteam.com/releases/view/6).

# Usage
## Visual Studio Code
Install the [Lua extension by Sumneko](https://marketplace.visualstudio.com/items?itemName=sumneko.lua). 

Once you have the extension installed, place the contents of the `src` folder somewhere in your mod. We recommend `Resources/lib/external/lucas-mod-launcher-lua`. The extension will automatically pick up the file and provide you with autocompletion and documentation for the custom functions.

You should then also configure the extension to use Lua 5.3 in `.vscode/settings.json`:
```json
{
	"Lua.runtime.version": "Lua 5.3",
}
```

## License
See [LICENSE](https://github.com/donutteam/lucas-mod-launcher-lua/blob/main/LICENSE.md).
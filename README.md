# zxboilerplate

ZX Spectrum sjasmplus+vscode boilerplate (with customizable build scripts for Windows and macOS).

You don't need to install `sjasmplus` and/or `make`, because this boilerplate includes compiled `sjasmplus` binaries both for Windows and macOS and doesn't need `make` as it uses batch/bash scripts for compile, copy output files and run them in emulator.

If you use Linux, you are welcomed to make a pull request for linux build script with a `sjasmplus` compiled binary, it would be very appreciated :)

If you prefer `make`-way build, you should probably better use [nyuk's fork](https://github.com/akanyuk/zxboilerplate) of oisee's zxboilerplate (it is very great and flexible).

This boilerplate is intended to be used as easy as possible out-of-the-box.

## How to use
1. Download and install [Visual Studio Code](https://code.visualstudio.com/Download).
2. Install [Z80 Macro-Assembler extension](https://marketplace.visualstudio.com/items?itemName=mborik.z80-macroasm).
3. Copy corresponding `.env.example-(windows|linux|macos)` file to `.env` and specify every path you need (remember that `.env` stays in `.gitignore`, so you can work on the same project in team every with his own setup):

```
PROJECT_NAME=zxboilerplate                              // Your project name, used to name output files

PATH_TO_SJASMPLUS=tools\sjasmplus.exe                   // Path to sjasmplus
                                                        // If you use another version, specify your own path
PATH_TO_AUTORUN=c:\Speccy\_tools\unreal\unreal.exe      // Path to emulator, which is launched after compilation is done
COPY_SNAPSHOT_TO=c:\Speccy\_tools\unreal\qsave1.sna     // Path where snapshot should be placed
COPY_LABELSLIST_TO=c:\Speccy\_tools\unreal\user.l       // Path where labelslist should be placed
```

Pay special attention to the slashes! For Windows it should be backslashes (like in example above), for macOS and Linux - forward slashes.

I use these arrangements because this is how UnrealSpeccy work. I prefer to run emulator (or have it already running) and then press `(Quick load)` shortcut to quick load snapshot (that's why I copy snapshot to `qsave1.sna` file). Then if I need to see labels in debugger, I press `CTRL+L` (Show labels) shortcut and UnrealSpeccy shows all the labels from `user.l` file.

Also, if you use another emulator, you should adjust these paths the way you need. Besides that, of course, you should feel free to modify any scripts at your own.

So, this is the way I use. If you make something completely different, that means that you should probably make your own build/compile script (with autopacker, autolinker, trd and tap maker, etc).

4. And this is it! Now you can use `Run build task` (Ctrl+Shift+B on Windows or ⌘+B on macOS by default) to compile your `main.asm` file, and do everything you need with the result.

Happy coding!

package macros;

import haxe.macro.Compiler;

class Includes {
    public static macro function run():haxe.macro.Expr {
        #if !display
        Compiler.include('flixel');
        #if !web
        Compiler.include('sys');
        #end
        Compiler.include('haxe.crypto');
        Compiler.include('spinehaxe');
        #if android
        Compiler.include('android');
        #end
        Compiler.include('haxe.crypto');
        Compiler.include('DateTools');
        Compiler.include('Reflect');
        Compiler.include('EReg');
        Compiler.include('Lambda');
        Compiler.include('StringBuf');
        Compiler.include('StringTools');
        return macro $v{null};
        #else
        return macro $v{null};
        #end
    }
}
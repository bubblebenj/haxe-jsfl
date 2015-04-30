# hxfl

Haxe extern definition for The Flash JavaScript API (aka jsfl).

###Overview

The Flash JavaScript API lets you create scripts that run in the Flash authoring environment.

Hxfl lets you have the full power of Haxe while creating jsfl files

## How to use

### Setup

Install it with `haxelib git`.

```
$ haxelib git hxfl git://github.com/bubblebenj/haxe-jsfl.git
```

An example of HXML.

```
-lib hxfl
-cp src
-main Main
-js bin/Main.jsfl
-D jsflVersion=CS4
```

### Access the fl

```haxe
import jsfl.Lib.fl;
var document:Document = fl.getDocumentDOM();
```

### Trace output

When link (-lib haxe-jsfl) passes as a library, 'trace' comes to be usable automatically.

```haxe
trace("Hello World"); // Main.hx:10: Hello World
```

## Example

### Scan a item library and output the items name

```haxe
import jsfl.Item;
import jsfl.Lib.fl;

class Main {
	public static function main() {
		var items:Array<Item> = fl.getDocumentDOM().library.items;
		for (item in items) {
			trace(item.name);
		}
	}
}
```

##About
###Credits
This project is forked from [tmskst/haxe-jsfl](https://github.com/tmskst/haxe-jsfl) external definitions which provides Japanese extern definition for the JSAPI.

The API versioning management is greatly inspired from Andi Li Haxe external for Jquery [jQueryExtern](https://github.com/andyli/jQueryExternForHaxe).

[The Haxe community](https://groups.google.com/forum/?hl=en#!forum/haxelang) for it's support.

###Sources
Definitions are copied from:
  * CC [Extending ADOBE ® FLASH ® PROFESSIONAL](http://help.adobe.com/en_US/flash/cs/extend/flash_extending_reference.pdf) （Last updated 12/6/2013) or http://help.adobe.com/en_US/flash/cs/extend/index.html.
  * CS6 Not found
  * CS5, CS5.5 [Extending ADOBE ® FLASH ® PROFESSIONAL CS5 & CS5.5](http://help.adobe.com/en_US/flash/cs/extend/flash_cs5_extending.pdf)
  * CS4 [Extending ADOBE
® FLASH ® CS 4 PROFESSIONAL](http://help.adobe.com/archive/en_US/flash/cs4/flash_cs4_extending.pdf)
  * CS3 not found
  * Flash8 not found [Macromedia Flash 8 - Extending Flash](http://w3.tue.nl/fileadmin/id/objects/E-Atelier/Phidgets/Software/Flash/fl8_extending.pdf)
  * MX2004 [Macromedia Flash™MX 2004 - Flash JavaScript Dictionary] (http://download.macromedia.com/pub/documentation/en/flash/mx2004/fl_jsapi.pdf).

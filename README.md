# haxe-jsfl

JSFL extern definition for Haxe.

Definitions are copied from:
  * CC [Extending ADOBE ® FLASH ® PROFESSIONAL](http://help.adobe.com/en_US/flash/cs/extend/flash_extending_reference.pdf) （Last updated 12/6/2013).
  * CS6 Not found
  * CS5, CS5.5 (http://help.adobe.com/en_US/flash/cs/extend/flash_cs5_extending.pdf)
  * CS4 (http://help.adobe.com/archive/en_US/flash/cs4/flash_cs4_extending.pdf)
  * CS3 not found
  * Flash8 not found
  * MX2004 (http://download.macromedia.com/pub/documentation/en/flash/mx2004/fl_jsapi.pdf) （Last updated ).

## How to use

### Setup

Install it with `haxelib git`.

```
$ haxelib git haxe-jsfl git://github.com/tmskst/haxe-jsfl.git master /jsfl/hxclasses
```

An example of HXML.

```
-lib haxe-jsfl
-cp src
-main Main
-js bin/Main.jsfl
```

### Access the fl

```haxe
import jsfl.Lib.fl;
var document:Document = fl.getDocumentDOM();
```

### Trace output

When link (-libhaxe-jsfl) passes as a library, 'trace' comes to be usable automatically.

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

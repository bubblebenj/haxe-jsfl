# haxe-jsfl

JSFL extern definition for Haxe.

Definitions are copied form [Extending ADOBE ® FLASH ® PROFESSIONAL](http://help.adobe.com/en_US/flash/cs/extend/flash_extending_reference.pdf)
（Last updated 12/6/2013).

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

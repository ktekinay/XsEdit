# README

__XsEdit__
An advanced XojoScript editor for [Xojo®](http://www.xojo.com/).

## General Information

The Xojo IDE has a built-in script editor, but it's missing some handy features like auto-complete or even line numbers. XsEdit fills that gap with a full-featured editor that still runs the scripts through the IDE.

## Benefits

Some of the benefits of XsEdit over the native XojoScript editor:

- Line numbers.
- Compiler error messages and highlighting.
- Auto-complete.
- Find and replace dialog.
- Comment and Uncomment sections of code.
- Include external files to emulate context.

## How To Use It

Download and build the project. Start up the XsEdit app and either create a new script or open an existing one. Use the Compile and Run In IDE buttons to compile or run.

### About Test Run

The Test Run button will force your script to run directly in XsEdit. This is good for testing small scripts but any IDE scripting methods or functions like `Location` will not actually do anything.

## About Auto-complete

Auto-complete works, but it is not scope or context aware. It merely auto-completes any known keyword or any variable, module, class, interface, etc., that you've defined earlier in the script whether you can access to it at that point or not, and whether it makes sense the way you are using it or not.

## About Includes

You can write, compile, and run an IDE script without doing anything special, but you might want to edit a script that's meant to run in your app that might have a context assigned. To address this, XsEdit will allow you to include one or more external files by starting a line like this:

```
'#include /path/to/file.xojo_script
```

or this:

```
//#include file.xojo_script
```

(You may also use either an absolute path, or relative path to your current script.)

Or you can use the menu option to select the file as a convenience.

At compile time, XsEdit will substitute the contents of the included file at the point of the `include` directive. Within the included file, you can recreate the functions, methods, and properties of your context. (They don't actually have to do anything, just keep the compiler from complaining.)

## Who Did This?

This project was designed and implemented by:

* Kem Tekinay (ktekinay at mactechnologies.com)
* Jeremy Cowgar (jeremy at cowgar.com)

With special thanks to Thomas Tempelmann and his [CustomEditfield](https://github.com/tempelmann/custom-editfield).

## FAQ

**How much does this cost?**

One-TRILLION dollars!! Or nothing, your choice.

You may freely use this in any project, but don't come back to us if it erases your hard drive or paints your house yellow or something. See the included LICENSE.txt file for details.

**How do I contribute?**

Fork the project to your GitHub account. Use the "develop" branch for general fixes. Make your changes, then submit a pull request. We'll look it over and merge what's appropriate or provide feedback.

## Release Notes

1.0 (July 7, 2015)

- Initial release.

1.1 (July 9, 2015)

- Emulated methods, functions, and properties will show a message if used in a script that's run within XsEdit.
- Fixed bug in CustomEditField that munged the test when pasting multiple lines at once.
- Added additional keywords.
- Files will be saved with the EOL for the given platform.
- Comment/Uncomment has been combined and improved.

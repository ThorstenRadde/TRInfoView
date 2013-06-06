#TRInfoView


an iOS library implementing a simple full screen web view (e.g. for a nicely formatted help screen)

## Usage
Add the following files to your iOS project:

 * TRInfoViewController.h
 * TRInfoViewController.m

Your project also needs an html-file to display (default name is readme.html).
You can then create an instance of the view controller and display it:

    [self.navigationController pushViewController: [[TRInfoViewController alloc] init] animated:YES];

If you want to display a different file than the default readme.html file you can use the `initForFile:` initializer and provide the name of the file to display as a parameter.

If you want to change the title of the info screen (displayed in the nav bar that is always shown on top of the info screen), you can just use the title property of TRInfoViewController (inherited from UIViewController).

## Example Files
The repository contains an example of what you can display in the web view:

 * a standard html file (readme.html) that may contain links to websites (will be opened in Safari) or email-addresses (will be opened in Mail)
 * use formatting contained in a CSS file (styles.css)
 * you can include PNG images

You can use the provided files as a starting point for your own project.

## Example Project
The repository also contains a sample project that shows some of the features:

 * TRViewController is a simple main screen with a nav bar (containing a sample "i" button) and two buttons
 * you can tap either the "i" button in the nav bar or the lower button to show the info view
 * the upper button can be used to hide the nav bar. When you open the info view now, it will still display a nav bar with the standard title "Info", but when closing the info view (using the "Back" button) the nav bar will be hidden again

##Author
[Thorsten Radde](https://github.com/ThorstenRadde) ([@ThRadde](https://twitter.com/thradde))


##License

Copyright (c) 2013 SmarterSoftware (http://www.smartersoftware.de)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

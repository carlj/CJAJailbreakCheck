#CJAJailbreakCheck
Check whenever a iOS Device has a Jailbreak or not.

[![Build Status](https://travis-ci.org/carlj/CJAJailbreakCheck.png?branch=master)](https://travis-ci.org/carlj/CJAJailbreakCheck)
[![Coverage Status](https://coveralls.io/repos/carlj/CJAJailbreakCheck/badge.png?branch=master)](https://coveralls.io/r/carlj/CJAJailbreakCheck?branch=master)


##Installation
Just drag & drop the [`CJAJailbreakCheck.h`](CJAJailbreakCheck/CJAJailbreakCheck.h) and [`CJAJailbreakCheck.m`](CJAJailbreakCheck/CJAJailbreakCheck.m) to your project.

##Example
First of all take a look at the [Example Project](Example/Classes/ExampleViewController.m)

##Usage
``` objc
//import the category
#import "UIDevice+Jailbreak.h"
```

``` objc
//check if the current device has a jailbreak
BOOL result = [UIDevice currentDevice].isJailbreaked;
if (result) {

	//The device is jailbreaked
}
```

##LICENSE
Released under the [MIT LICENSE](LICENSE)
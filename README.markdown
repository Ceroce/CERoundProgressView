# CERoundProgressView #

CERoundProgressView shows a progress as a pie share diagram. While it does not inherit UIProgressView, its API is quite similar.

The view is graphically very simple, consisting of only a background circle and a coloured arc:

![A CERoundProgressView on its own](https://github.com/Ceroce/CERoundProgressView/blob/master/doc/ProgressViewAlone.png)

However, used in conjunction with other elements, it becomes quite interesting. For example, the sample program uses it as the background of a button which uses an image, transparent in some parts:

![A CERoundProgressView used with a button](https://github.com/Ceroce/CERoundProgressView/blob/master/doc/ProgressViewWithButton.png)


### Particular Features ###

* The change of progress is animated.
* Colours can be set, either individually or through the UIAppearance proxy.


## How to use ##

Drag the following files to your Xcode project:
* CERoundProgressView.h and .m
* CERoundProgressLayer.h and .m

Because the progress view uses Core Animation, your target must also link with the QuartzCore framework.


## Compatibility ##

CERoundProgressView is compatible with iOS 5.0 (not tested on betas of iOS 6 yet).

#### Automatic Reference Counting ####
ARC is not enabled in the sample project, and the classes manage memory the old way.

If ARC is activated in your project, the compiler will complain about the -dealloc method of CERoundProgressLayer. You may remove this method.

#### Older SDKs ####

CERoundProgressView makes use of the UIAppearance API which is only available from iOS 5.0. Should you want to link with older SDKs, you may modify CERoundProgressView.h so the class does not conform to the UIAppearanceContainer protocol, and its properties are not declared as UI_APPEARANCE_SELECTOR.

## Sample project ##

The sample program shows a button which toggles between Play and Pause. The CERoundProgressView is below it.

* CEPlayer is the most interesting class. It makes its position evolve from 0 to 1 every on a duration of 20 seconds. The position changes abruptly every 0.5 s, on purpose: you can notice that the slider jumps from value to value, while the progress view animates smoothly.

* CEViewController is the delegate of CEPlayer. Its  purpose is to catch the actions of the button and set the progress of the slider and the progress view.


## License ##

Copyright (c) 2012, Céroce. All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

3. Neither the name of Céroce nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL CÉROCE BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

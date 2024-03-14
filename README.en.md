# Readme Language

[![zh-tw](https://img.shields.io/badge/lang-zh_tw-blue.svg)](https://github.com/mosil/flutter-google-gemini-apihttps://github.com/mosil/flutter-google-gemini-api/blob/main/README.md)

# Introduction

This project will use the Gemini API SDK released by the Flutter Team to quickly complete a chat room that we can use to
talk to the Gemini Model.
This project will be accompanied by the
article [Build With Google Gemini: The Easy Way to Start Developing Flutter App](https://medium.com/@mosil-dev/build-with-google-gemini-the-easy-way-to-start-developing-flutter-apps-c6e4f308bc54).

## How to start

### Environment

- Development Environment
    - Flutter 3.16.0 or higher
    - Dart 3.2 or higher
- Platforms
    - Android
    - iOS
    - Web
- Packages
    - [google_generative_ai](https://pub.dev/packages/google_generative_ai)

### Get API KEY

1. Please go to [Google AI Studio](https://aistudio.google.com/app/apikey) to get your api key.
2. Change your api key in `lib/core/constants.dart`.

### Branch

此專案有三個分支，

1. `main`: The initial state, not yet connected to the Gemini API.
2. `1-gemini-api`: Add the call to the Gemini API. Be sure to replace the API key obtained from Google AI Studio.
3. `2-geimin-api-completed`，Complete the goal of this project.

## Credits

- Ada/阿達
    - [Github - https://github.com/mosil](https://github.com/mosil)
    - [Blog - https://www.mosil.space/](https://www.mosil.space/)
    - [Medium - https://medium.com/@mosil-dev](https://medium.com/@mosil-dev)

## License

The MIT License (MIT)

Copyright (c) 2024 [Mosil Studio](https://mosil.space/)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
associated documentation files (the "Software"), to deal in the Software without restriction,
including without limitation the rights to use, copy, modify, merge, publish, distribute,
sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial
portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

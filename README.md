# Readme Language

[![en](https://img.shields.io/badge/lang-en-red.svg)](https://github.com/mosil/flutter-google-gemini-api/blob/main/README.en.md)

# 專案介紹

此專案將搭配文章[使用 Google Gemini API 快速建置自己的 Flutter App]()，
使用由 Flutter Team 釋出的 Gemini API SDK，
來快速完一個屬於我們自己可以跟 Gemini Model 對話的聊天室。

## 如何開始

### 環境

- 開發環境
    - Flutter 3.16.0 以上
    - Dart 3.2 以上
- 可執行平臺
    - Android
    - iOS
    - Web
- 使用套件
    - [google_generative_ai](https://pub.dev/packages/google_generative_ai)

### 取得 API KEY

1. 請到 [Google AI Studio](https://aistudio.google.com/app/apikey) 取得 apiKey。
2. 於 `lib/core/constants.dart` 中置換掉 `apiKey`。

### 分支

此專案有三個分支，

1. `main`，初始狀態，還沒有串接 Gemini API。
2. `1-gemini-api`，加入 Gemini API 的呼叫，請記得更換從 Google AI Studio 中取得的 API KEY。
3. `2-geimin-api-completed`，完成此專案的目標。

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

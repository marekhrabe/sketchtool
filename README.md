# SketchTool binary

Available in npm for convenience. Unofficial. Source: http://bohemiancoding.com/sketch/tool/

This package version follows the original version of SketchTool. I'll update the binary when new one is released. Please file an issue, if I don't.

## Usage

### Simple usage

```js
var sketchtool = require('sketchtool')

sketchtool('dump /path/to/file.sketch', function (error, stdout, stderr) {
  // callback
})
```

### Just get absolute path to binary

```js
var sketchtool = require('sketchtool')
console.log('This is path to sketchtool binary:', sketchtool.binaryPath)
```

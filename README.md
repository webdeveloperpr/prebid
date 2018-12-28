# prebid

## Clone

Clone the repo by running the command in the terminal.

```bash
git clone https://github.com/webdeveloperpr/prebid prebid
```

## Build

This will build the custom prebid build.

```bash
  npm run build
```


## Prebid adapters

Add modules to the `modules.json` file, to include them in the prebid build.

```
[
  "criteoBidAdapter",
  "rubiconBidAdapter"
]
```

## How to Use

Import prebid like normal and then call the function to
run prebid.


```javascript
  import prebid from 'prebid';

  prebid();
```

## Installation:

To install the dist files to into a repo type. Then you can import it like any ES6 module.

```bash
  npm i github:webdeveloperpr/prebid#master
```


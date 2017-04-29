## Docker Build

```
docker build . -t jshimazu/ad-transform
```

## Docker Run

```
docker run -it --rm -p 3000:3000 -v "$PWD":/usr/src/app jshimazu/ad-transform
```

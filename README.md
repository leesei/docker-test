Test

- if context contribute to the size of image
- how cache of Docker layer is invalidated

# Usage

```
make  # initiate context

make docker
docker images # image size is 0 byte
# context won't affect size of image built

touch file
make docker   # cache is reused

echo "abc" > file
make docker   # cache is invalidated
# content of file matters, timestamp doesn't matter
```

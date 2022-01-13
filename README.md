# medium-bazel-getting-started




Install bazel -> https://docs.bazel.build/versions/main/install.html
Official Supports: 
- Ubuntu Linux
- macOS
- Windows

Use the OS and installation method of your choice, e.g. binary installer, homebrew, bazelisk, or from source


---

Terminology -> https://docs.bazel.build/versions/main/build-ref.html

Golang rules -> https://github.com/bazelbuild/rules_go

> Add a file named BUILD.bazel in the root directory of your project. You'll need a build file in each directory with Go code, but you'll also need one in the root directory, even if your project doesn't have Go code there.



```sh
# `:hello` References to the  `name = "hello",` in the BUILD.bazel file of src/app1
# `//src/app1` is the path to the `BUILD.bazel` file of the application we want to build
bazel build //src/app1:hello

# The initial build might take some time (e.g. 54s on my machine, taking into account download of libraries used)
# but the second build only took 0.3s thanks to caching
# Changing the hello.go file and running `bazel build ...` again only took 1-2s 
```

```sh
# Cleans the bazel built binaries
bazel clean

# Again running `bazel build ...` took around 10s
```



-- ToDo (next one)
bazel_gazelle -> https://github.com/bazelbuild/bazel-gazelle
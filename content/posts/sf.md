---
title: "Seg Fault"
date: 2022-04-20T16:14:59-05:00
draft: false
---

The most common way I see seg fault happen is vectors / arrays with missallocated memory.

Seg fault is caused by overwritting memory of something else or attempting to overwrite unallocated memory.

### Basic Example
```c++
int n; cin >> n;
vector<int> arr;
for (int i = 0; i < n; i++) cin >> arr[i];
```

This will cause seg fault because we're writing to index out of bounds vector :gg:

The way to fix this is to allocate the vector, seg fault errors are usually like this.

```c++
int n; cin >> n;
vector<int> arr(n);
for (int i = 0; i < n; i++) cin >> arr[i];
```

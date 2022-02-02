---
title: "Seg_fault"
date: 2022-02-02T10:40:23-06:00
draft: true
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

#ifndef ENDERLIB_H
#define ENDERLIB_H

// Vector (dynamic array)

#include <stdbool.h>
#include <stddef.h>

typedef struct {
  void *array;
  size_t length;
  size_t capacity;
} vector;

vector vector_init(void);
bool vector_push(vector *vec, void *elem);
void vector_free(vector *vec);

#endif // !ENDERLIB_H

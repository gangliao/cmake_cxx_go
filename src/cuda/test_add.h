#ifndef TEST_ADD_H
#define TEST_ADD_H

// __cplusplus gets defined when a C++ compiler processes the file
#ifdef __cplusplus
// extern "C" is needed so the C++ compiler exports the symbols without name
// manging.
extern "C" {
#endif

int test_add(void);

#ifdef __cplusplus
}
#endif


#endif

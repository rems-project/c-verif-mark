## Candidate examples

This is just a start...

### Micro-benchmarks 

Starting very simple, so that one can really explain what the tool is doing:

```C
int p1(int x) 
/*@ ensures return == x @*/
{ 
  return x;
}
```

```C
// signed arithmetic
int p1s(int x) 
/*@ requires x+1 < (power(2,31)) @*/
/*@ ensures return == x+1 @*/
{ 
  return x+1;
}
```

```C
// unsigned arithmetic
unsigned int p1u(unsigned int x) 
/*@ ensures return == (x+1) mod (power(2,32)) @*/
{ 
  return x+1;
}
```

```C
// sequences of updates
int p1seq(int x) 
/*@ requires let r = ((x+1)*2) @*/
/*@ requires r < (power(2,31)) @*/
/*@ requires r > (0-(power(2,31))) @*/
/*@ ensures return == r @*/
{
  int y;
  y = x+1;
  y = y*2;
  return y;
}
```

```C
// pointer dereferencing
int p2(int *x) 
/*@ requires let O = Owned(x) @*/
/*@ ensures let O2 = Owned(x) @*/
/*@ ensures return == O2.value @*/
{ 
  return *x;
}
```

```C
// struct member access
struct s {
  int x;
  int y;
};

int p2y(struct s *p) 
/*@ requires let O = Owned(p) @*/
/*@ ensures let O2 = Owned(p) @*/
/*@ ensures return == O2.value.y @*/
{
  return p->y;
}
```

```C
// array access
int a[10];

int p3(void) 
{
  a[3]=2;
  return a[3];
}
```

### Control flow

Exercising a range of control flow with the `cbench` factorial examples 2.1 - 2.4.


### Ownership

- simple linked list
- intrusive simple linked list
- Linux circular linked list
- ...?


### Larger examples

...one or two larger examples


### Modular verification

. ...?   (what's small enough to be quick to do while still instructive?)






- the VST sum-of-array example
- ...



## Andrew Appel's Desiderata for examples
- Multilevel: The C program must not only be proved to implement a functional model, the functional model must be proved to actually do the desired thing.
- Unified: The C-program proof and high-level proof should be done in the same logical framework so that they can be composed into a single end-to-end theorem.
- Composable: if not in the same logical framework, some principled way to link the high-level proof with the low-level verification.
- Low-expressive: The proof system for C-program proofs should be expressive enough to verify "dusty deck" programs that do all-too-clever things with data representations.
- High-expressive: The proof system for high-level proofs should be expressive enough to verify high-level specifications with entirely nontrivial application-specific mathematics.
- Modular: modular verification of modular programs with data abstraction.
- Open-source: The C program and its proofs (low-level and high-level) should be open-source.
- Documented: (if possible) in a paper so people can understand what it's about.
- 32/64-bit: Programs/proofs that are not portable must be marked as 32-bit or 64-bit.


(PS notes: some of those are a bit specific to the VST way of doing things)






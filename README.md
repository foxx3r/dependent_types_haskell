# dependent-types

## What are dependent types?

Dependent types are types that depends on values. They are very useful because they treat data and types as the same thing, and the type system is kinda like a theorem prover, then, dependent types give you the ability to specify what properties your code should have.

## Don't get confused about generics

Generics (and polymorphism, preferrible by many people) are all about return different values depending on input, dependent types are about return different tpes depending on input.

## What is this script for?

As you probably know, a few languages support dependent types, and Haskell is one of them. So, I've found out a way to simulate (almost perfect, but it has limitations) dependent types that are called singleton types. With this, we can simulate dependent types in Haskell.

## How do I test/run the code?

Make sure you have installed the stack, then enter on the directory you've cloned and run:

`$ stack build`

After that, just run:

`$ stack ghci`

Now, you can test the code specified on src/Lib.hs, an example:

```hs
λ foo = Suc 7
foo :: Num n => S n
λ foo = Zero
foo :: Z
λ foo = Lib.succ 8
foo :: (Nat n, Num n) => S n
λ foo = Cons 1 Nil
foo :: Num a => List (S Z) a
λ foo = Cons 1 (Cons 2 (Cons 3 (Cons 4 (Cons 5 Nil))))
foo :: Num a => List (S (S (S (S (S Z))))) a
```

## Credits:

- https://stackoverflow.com/questions/16017294/singleton-types-in-haskell

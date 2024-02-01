# Problem

* The Nix evaluation cache doesn't seem sophisticated enough to handle very simple situations.
* For example, this repo has a devshell that does not depend on self or the src of this repo at all. Yet, the cache does not actually work under common scenarios.

# Reproduction

Try running the dev shell:

```ShellSession
$ nix develop -vvvv
```

Note the cache is not hit. Okay that's fine you've never built it before. Try again.

```ShellSession
$ nix develop -vvvv
```

Now the cache was hit, great!

Now edit this README.md file

```ShellSession
$ echo "hi" >> README.md
```

Will the dev shell still be cached?

```ShellSession
$ nix develop -vvvv
```

Nope :-(

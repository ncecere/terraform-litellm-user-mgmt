## Merge Request Process

1. Ensure any install or build dependencies are removed before the end of the layer when doing a build.
2. Update the README.md with details of changes to the interface, this includes new environment
   variables, exposed ports, useful file locations and/or parameters.
3. Increase the version numbers in any examples files and the README.md to the new version that this Merge Request would represent. The versioning scheme we use is [SemVer](http://semver.org/).

## Git Commit Guidelines

We have very precise rules over how our git commit messages can be formatted.  This leads to **more
readable messages** that are easy to follow when looking through the **project history**.  But also,
we use the git commit messages to **generate the change log**.

### Commit Message Format

Each commit message consists of a **header**, a **body** and a **footer**.  The header has a special
format that includes a **type**, a **scope** and a **subject**:

```
<type>(<scope>): <subject>
<BLANK LINE>
<body>
<BLANK LINE>
<footer>
```

The **header** is mandatory and the **scope** of the header is optional.

Any line of the commit message cannot be longer than 100 characters! This allows the message to be easier
to read on GitLab as well as in various git tools.

### Revert

If the commit reverts a previous commit, it should begin with `revert:`, followed by the header
of the reverted commit.
In the body it should say: `This reverts commit <hash>.`, where the hash is the SHA of the commit
being reverted.

### Type

Must be one of the following:

|    **Type**     | **SemVer Change** | **Description**                                                                     |
| :-------------: | :---------------: | :---------------------------------------------------------------------------------- |
|   no-release    |    no release     | no release is created                                                               |
|      chore      |    no release     | Changes to the build process or auxiliary tools and libraries such as documentation |
|     revert      |    no release     | Revert a previous commit, see [Revert Explanation](#revert) for more detail         |
|       fix       |       Patch       | A bug fix                                                                           |
|     hotfix      |       Patch       | A bug fix                                                                           |
|      perf       |       Patch       | A code change that improves performance                                             |
|      test       |       Patch       | Adding missing or correcting existing tests                                         |
|      docs       |       Patch       | Documentation only changes                                                          |
|      style      |       Patch       | Changes that do not affect the meaning of the code (white-space, formatting, etc)   |
|    refactor     |       Patch       | A code change that neither fixes a bug nor adds a feature                           |
|      patch      |       Patch       | Force patch level version up                                                        |
|      feat       |       Minor       | A new feature                                                                       |
|      minor      |       Minor       | Force minor level version up                                                        |
| BREAKING CHANGE |       Major       | Address a breaking change                                                           |
|      major      |       Major       | Force major level version up                                                        |

### Scope

The scope could be anything specifying place of the commit change. For example `$location`,
`$browser`, `$compile`, `$rootScope`, etc...

You can use `*` when the change affects more than a single scope.

### Subject

The subject contains succinct description of the change:

* use the imperative, present tense: "change" not "changed" nor "changes"
* don't capitalize first letter
* no dot (.) at the end

### Body

Just as in the **subject**, use the imperative, present tense: "change" not "changed" nor "changes".
The body should include the motivation for the change and contrast this with previous behavior.

### Footer

The footer should contain any information about **Breaking Changes** and is also the place to
reference GitLab issues that this commit closes.

**Breaking Changes** should start with the word `BREAKING CHANGE:` with a space or two newlines.
The rest of the commit message is then used for this.

A detailed explanation can be found in this [document][commit-message-format].

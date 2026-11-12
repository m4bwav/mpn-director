# Security policy

## Reporting a problem

Open an issue or a pull request and I'll take a look. A pull request with the fix is the quickest route.

You can also report privately: open the repository's **Security** tab and choose **Report a vulnerability**.

This is a one-person project with no bug bounty and no response deadline. I'll reply when I can and say what I plan to do. Good-faith testing on your own copy is welcome.

## Supported versions

Only the latest version on the default branch (and on the Steam Workshop) gets fixes.

## Scope

The mod is a Harmony assembly that runs code inside the game with your user's permissions. In scope: anything in it that reads or writes outside the game's own save and mod folders, reaches the network, or runs code a scene or wave file supplies. Out of scope: bugs in MADNESS: Project Nexus, its SceneTools or ModTools projects, Unity or Steam; report those to their makers.

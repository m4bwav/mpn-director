# GitHub wiki (2026-11-11)

Wiki: https://github.com/m4bwav/mpn-director/wiki, written with the wikiwright skill for Director 0.17.1. Working copy: a sibling clone `mpn-director.wiki` (master). Published by a plain push over GitHub's placeholder Home; `wikiwright.py live` passed for every page, sidebar and footer.

Pages: Home, Install-and-Play, Keys-and-Features, Scenes, Weapons-and-Waves, Co-op, Build-from-Source, Workshop-Updates, FAQ-and-Troubleshooting, Versions, _Sidebar, _Footer.

Verification: Regression checks (tests/DirectorFreezeChecks) run and passed on 2026-11-11. No game run: a mod has no registry, so pages were checked against README, source, change notes and pack.ps1. Kind: a game mod, not a package, so there is no wiki-verify script or saved output.

Public rules followed: no person named except the author credit, no machine names, no absolute local paths, no private projects; anyone who asked for features is "the requester". The pages credit madnesswright as the toolkit this was split from.

Inaccuracies found in the shipped docs (not fixed here):
1. install.cmd tells the player to select "Swap And Unaware"; the mod list shows Director.
2. README Build section shows `pack.ps1 -Version 0.6.0` (default is 0.17.1) and a deploy command with broken backticks.
3. AGENTS.md says to bump the version in mod/info.txt, which has no version field.

Update procedure: pull the wiki clone, update the pages that name the version (Home, Build-from-Source (pack.ps1 example), Versions, _Footer) plus the feature pages for what changed, run `wikiwright.py check <wiki dir> --version X`, commit, push, `wikiwright.py live m4bwav/mpn-director <wiki dir>`.

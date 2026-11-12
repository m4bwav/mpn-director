# Agent rules for Director

Rules for any AI agent (Claude Code, Codex, Cursor, Copilot, Gemini CLI) working in this repository. `CLAUDE.md` imports this file and `.github/copilot-instructions.md` points here.

Read [README.md](README.md) first. This mod was split out of [madnesswright](https://github.com/m4bwav/madnesswright) on 2026-11-11 with its history; the toolkit's skills (madnesswright, madnesswright-scenes, madnesswright-modtools) and `mpn.py` still do the checking and deploying, so clone madnesswright next to this repository.

## Rules

- Research beats recall: the game ships betas often. Never change a branch name, card field, path or game rule from memory; check the madnesswright skills' RESEARCH.md or the game.
- Every Steam Workshop update gets real change notes: the version and what changed for the player since the last update. Never "Update" or blank. Upload with madnesswright's `examples/WorkshopUpload` (it takes the notes as a file).
- Keep the Workshop page in step: any change a player can see updates `workshop-description.txt` in the same pull request, and whenever what a player sees changes, retake the screenshots and rebuild the preview before or with the upload; afterwards check the live page.
- Nothing goes to the Workshop before the owner has played the build and said so.
- This is a public repository. Nothing in it names a person other than the author credit, a machine, an absolute path on someone's machine, a private project or a credential. Whoever asked for a change is "the requester" or "the player", never a family word.
- Before committing, run `dotnet run --project tests/DirectorFreezeChecks/DirectorFreezeChecks.csproj` (CI runs it). Versions: bump the default `-Version` in `pack.ps1` (`mod/info.txt` holds no version), add a `change-notes-<version>.txt`, tag `vX.Y.Z`.
- No AI attribution anywhere: no Co-Authored-By trailers and no "generated with" lines in commits, pull requests or files.

## Handoff

`ai-docs/HANDOFF.md` holds the state of unfinished work and `ai-docs/log.md` the log. Link documents with relative markdown links.

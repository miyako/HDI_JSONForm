# HDI_JSONForm

A 4D v17 **HDI** (How Do I) binary database demonstrating how to programmatically build forms, converted to a 4D project using 4D 21. The codebase was then updated and cleaned up with the help of **GitHub Copilot**.

## Origin

This project started as a binary `.4DB` example database originally distributed with 4D v17. It was converted to the modern project architecture (`.4DProject`) using 4D 21's built-in binary-to-project conversion tool.

- **Blog post:** [Discover the power of dynamic forms](https://blog.4d.com/discover-the-power-of-dynamic-forms/)

- **Original download:** [HDI_JSONForm.zip](https://download.4d.com/Demos/4D_v16_R6/HDI_JSONForm.zip)

## Branches

Each branch represents a distinct modernisation effort, guided by a corresponding Copilot instruction file.

| Branch | Description | Instructions |
|--------|-------------|--------------|
| [`miyako-4d-project-migration`](../../tree/miyako-4d-project-migration) | Modernised the project: hid non-entry-point methods from the Run Method dialog, added XLIFF localisation, converted `C_*` declarations to `var`/`#DECLARE` syntax, migrated menus to standard actions, modernised the startup dialog, and added dark mode/Liquid Glass CSS support. | [method.visibility.instructions.md](.github/instructions/method.visibility.instructions.md), [localisation.instructions.md](.github/instructions/localisation.instructions.md), [variable.declarations.instructions.md](.github/instructions/variable.declarations.instructions.md), [menu.instructions.md](.github/instructions/menu.instructions.md), [startup.instructions.md](.github/instructions/startup.instructions.md), [css.instructions.md](.github/instructions/css.instructions.md), [tahoe.css.instructions.md](.github/instructions/tahoe.css.instructions.md) |
| [`miyako-fix-instruction-paths`](../../tree/miyako-fix-instruction-paths) | Moved Copilot instruction files from `.github/copilot/instructions/` to the auto-discovered `.github/instructions/` path. | *(none — path relocation only)* |
| [`miyako-hdi-full-modernisation`](../../tree/miyako-hdi-full-modernisation) | Completed the full HDI modernisation on top of `main`: method visibility, XLIFF localisation, `var`/`#DECLARE` syntax, standard menu actions, a rebuilt startup dialog (window reuse, `CALL WORKER`, `BtnDemo` object method), dark mode/Liquid Glass CSS, and this README update. | [method.visibility.instructions.md](.github/instructions/method.visibility.instructions.md), [localisation.instructions.md](.github/instructions/localisation.instructions.md), [variable.declarations.instructions.md](.github/instructions/variable.declarations.instructions.md), [menu.instructions.md](.github/instructions/menu.instructions.md), [startup.instructions.md](.github/instructions/startup.instructions.md), [css.instructions.md](.github/instructions/css.instructions.md), [tahoe.css.instructions.md](.github/instructions/tahoe.css.instructions.md), [readme.branches.instructions.md](.github/instructions/readme.branches.instructions.md), [readme.usage.guidance.instructions.md](.github/instructions/readme.usage.guidance.instructions.md) |

## Copilot Token Usage

Actual per-session token usage, pulled from Copilot session records.

| Session | Branch | Model(s) | Input Tokens | Output Tokens | Turns |
|---------|--------|----------|-------------:|--------------:|------:|
| 4d project migration | `miyako-4d-project-migration` | Claude Sonnet 5 | 10,357,880 | 80,038 | 98 |
| Move Copilot instruction files to the correct path | `miyako-fix-instruction-paths` | Claude Opus 4.6 | 200,454 | 1,061 | 6 |
| HDI full modernisation | `miyako-hdi-full-modernisation` | Claude Sonnet 5 | 8,785,512 | 43,888 | 65 |
| **Total** | | | **19,343,846** | **124,987** | **169** |

## Screenshots

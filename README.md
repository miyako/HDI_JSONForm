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
| [`miyako-hdi-full-modernisation`](../../tree/miyako-hdi-full-modernisation) | Completed the full HDI modernisation on top of `main`: method visibility, XLIFF localisation, `var`/`#DECLARE` syntax, standard menu actions, a rebuilt startup dialog (window reuse, `CALL WORKER`, `BtnDemo` object method), dark mode/Liquid Glass CSS, and this README update. | [method.visibility.instructions.md](.github/instructions/method.visibility.instructions.md), [localisation.instructions.md](.github/instructions/localisation.instructions.md), [variable.declarations.instructions.md](.github/instructions/variable.declarations.instructions.md), [menu.instructions.md](.github/instructions/menu.instructions.md), [startup.instructions.md](.github/instructions/startup.instructions.md), [css.instructions.md](.github/instructions/css.instructions.md), [tahoe.css.instructions.md](.github/instructions/tahoe.css.instructions.md), [readme.branches.instructions.md](.github/instructions/readme.branches.instructions.md), [readme.usage.guidance.instructions.md](.github/instructions/readme.usage.guidance.instructions.md) |

## Copilot Token Usage

Actual per-session token usage, pulled from Copilot session records.

| Session | Branch | Model(s) | Input Tokens | Output Tokens | Turns |
|---------|--------|----------|-------------:|--------------:|------:|
| HDI full modernisation | `miyako-hdi-full-modernisation` | Claude Sonnet 5 | 18,668,837 | 76,466 | 137 |
| **Total** | | | **18,668,837** | **76,466** | **137** |

## Screenshots

<img width="724" height="592" alt="Screenshot 2026-07-23 at 17 48 07" src="https://github.com/user-attachments/assets/18e88dfb-8980-4bee-b8b7-90efe583f530" />
<img width="980" height="752" alt="Screenshot 2026-07-23 at 17 48 10" src="https://github.com/user-attachments/assets/eab5ddd1-ffb9-431b-a0fc-d8f52a80b2c6" />
<img width="980" height="752" alt="Screenshot 2026-07-23 at 17 48 16" src="https://github.com/user-attachments/assets/5772f99c-4e3d-423b-91e9-ac631859cbc9" />
<img width="980" height="752" alt="Screenshot 2026-07-23 at 17 48 21" src="https://github.com/user-attachments/assets/732e4d31-24ba-4439-b9f6-d97bcd9b595f" />
<img width="980" height="752" alt="Screenshot 2026-07-23 at 17 48 28" src="https://github.com/user-attachments/assets/3171be3d-a07d-4fb0-abb4-63080f90deed" />

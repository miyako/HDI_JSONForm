![version](https://img.shields.io/badge/version-20%2B-E23089)
![platform](https://img.shields.io/static/v1?label=platform&message=mac-intel%20|%20mac-arm%20|%20win-64&color=blue)

# HDI_JSONForm

Building and opening 4D forms from JSON at runtime -- as objects, subforms, and dialogs -- instead of static form definitions. Originally published by 4D as a **HDI** (*How Do I*) example for **4D v17**; converted from the binary `.4DB` to the `.4DProject` architecture so it runs on current 4D releases.

## What it demonstrates

- Loading a JSON-described form and displaying it in a subform at runtime with `OBJECT SET SUBFORM` (`btnHelloWorld`).
- Parsing a form definition into an object, editing its properties in code (`$objForm.pages[1].objects.title.text:=...`), and opening the mutated object as a dialog (`Button1`).
- Passing either a form object or a JSON file path to `Open form window`/`DIALOG` -- both are accepted as dynamic forms.
- Using a JSON file path as the input and output form of a table (`FORM SET INPUT` + a selection list box in `outputForm.json`).
- Populating a table selection from JSON with `JSON TO SELECTION`, wrapped in a transaction that is cancelled so the demo leaves no data behind.
- Revealing the raw form JSON files to the user with `OPEN URL`.
- Driving tab-control text from a `Samples.json` collection sorted with `orderBy` and expanded with `COLLECTION TO ARRAY`.

## Key commands

| Command | Used for |
|---|---|
| `OBJECT SET SUBFORM` | Loading a JSON form object into the `SubformHelloWorld` container |
| `DIALOG` | Opening a form object or JSON-path dynamic form as a dialog |
| `Open form window` | Creating the window for the dynamic form/dialog |
| `JSON Parse` | Reading `Confirm.json`, `HelloWorld.json`, `Samples.json` into objects |
| `Document to text` / `Get 4D folder` | Loading form JSON from the resources folder |
| `JSON TO SELECTION` | Filling `[Person]` from `Person.json` |
| `FORM SET INPUT` | Setting a JSON file as the table's input form |
| `OPEN URL` | Opening the raw JSON form files for inspection |
| `COLLECTION TO ARRAY` | Expanding the sorted `Samples.json` into tab-control arrays |

## How it works

`00_Start` opens the `HDI` splash; its demo button opens `HDI2`, the demo. `HDI2/method.4dm` calls `initHDI` on load, which reads `Samples.json`, sorts it with `orderBy`, and spreads it into the `TabControl`, `TextTabControl` and `TextJSONForm` arrays with `COLLECTION TO ARRAY`; page changes update the shown description via `OBJECT Get pointer`.

Each demo button shows a different way to use a dynamic form:

- `btnHelloWorld` parses `HelloWorld.json` and drops it straight into a subform with `OBJECT SET SUBFORM`.
- `Button1` parses `Confirm.json`, writes the current title/subtitle into `$objForm.pages[1].objects.title.text` and `.subTitle.text`, then opens the *object* itself with `Open form window($objForm)` + `DIALOG($objForm)` -- the most interesting piece, since the form shown was assembled in code.
- `btnOpenListForm` loads `Person.json` into `[Person]` with `JSON TO SELECTION`, sets `InputForm.json` as the input form via `FORM SET INPUT`, then opens `outputForm.json` (a dynamic form containing a selection list box) as a dialog. The whole thing runs inside `START TRANSACTION` ... `CANCEL TRANSACTION`, so the imported records are rolled back.
- `btnOpenInputJSON` and `btnOpenOutputJSON` simply `OPEN URL` the JSON files so the reader can see the form source.

## Points of interest

- A dynamic form can be supplied three ways here: as a parsed object, as a subform, and as a `/RESOURCES/...json` path string -- `DIALOG` and `Open form window` accept all of them.
- `Button1` mutates the form definition after parsing but before display, showing form structure is just data you can edit.
- `btnOpenListForm` deliberately wraps the import in a cancelled transaction, so running the demo repeatedly never accumulates `[Person]` records.
- Form text is bound through `OBJECT Get pointer(Object named; "var...")->` rather than direct variable references, a pattern that works regardless of how the form was built.

## Modernisation notes

Converted from the original binary `.4DB` to a 4D project.

| Branch | Description | Guidance |
|--------|-------------|----------|
| [`miyako-hdi-full-modernisation`](../../tree/miyako-hdi-full-modernisation) | Completed the full HDI modernisation on top of `main`: method visibility, XLIFF localisation, `var`/`#DECLARE` syntax, standard menu actions, a rebuilt startup dialog (window reuse, `CALL WORKER`, `BtnDemo` object method), dark mode/Liquid Glass CSS, and this README update. | [`4dmethods`](https://github.com/miyako/skills/tree/main/4d-skills/skills/4dmethods), [`4dlocalise`](https://github.com/miyako/skills/tree/main/4d-skills/skills/4dlocalise), [`4dmodernise`](https://github.com/miyako/skills/tree/main/4d-skills/skills/4dmodernise), [`4dproject`](https://github.com/miyako/skills/tree/main/4d-skills/skills/4dproject), [`4dstartup`](https://github.com/miyako/skills/tree/main/4d-skills/skills/4dstartup), [hdi.startup.instructions.md](.github/instructions/hdi.startup.instructions.md), [`4dcss`](https://github.com/miyako/skills/tree/main/4d-skills/skills/4dcss), [readme.branches.instructions.md](.github/instructions/readme.branches.instructions.md), readme.usage.guidance.instructions.md |

## References

- [4D blog: Discover the power of dynamic forms](https://blog.4d.com/discover-the-power-of-dynamic-forms/)
- [4D documentation: Forms (dynamic forms)](https://developer.4d.com/docs/FormEditor/forms)
- [4D documentation: OBJECT SET SUBFORM](https://developer.4d.com/docs/commands/object-set-subform)
- [4D documentation: JSON TO SELECTION](https://developer.4d.com/docs/commands/json-to-selection)
- [4D documentation: FORM SET INPUT](https://developer.4d.com/docs/commands/form-set-input)
- Original download: [HDI_JSONForm.zip](https://download.4d.com/Demos/4D_v16_R6/HDI_JSONForm.zip)
- Index of v16/v17 HDIs: [miyako/4d-hdi](https://github.com/miyako/4d-hdi)

## Screenshots

<img width="724" height="592" alt="Screenshot 2026-07-23 at 17 48 07" src="https://github.com/user-attachments/assets/18e88dfb-8980-4bee-b8b7-90efe583f530" />
<img width="980" height="752" alt="Screenshot 2026-07-23 at 17 48 10" src="https://github.com/user-attachments/assets/eab5ddd1-ffb9-431b-a0fc-d8f52a80b2c6" />
<img width="980" height="752" alt="Screenshot 2026-07-23 at 17 48 16" src="https://github.com/user-attachments/assets/5772f99c-4e3d-423b-91e9-ac631859cbc9" />
<img width="980" height="752" alt="Screenshot 2026-07-23 at 17 48 21" src="https://github.com/user-attachments/assets/732e4d31-24ba-4439-b9f6-d97bcd9b595f" />
<img width="980" height="752" alt="Screenshot 2026-07-23 at 17 48 28" src="https://github.com/user-attachments/assets/3171be3d-a07d-4fb0-abb4-63080f90deed" />

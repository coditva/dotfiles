import * as Oni from "oni-api"

export const activate = (oni: Oni.Plugin.Api) => {
    console.log("config activated")

    // Input
    //
    // Add input bindings here:
    //
    oni.input.bind("<c-enter>", () => console.log("Control+Enter was pressed"))

    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")

}

export const deactivate = (oni: Oni.Plugin.Api) => {
    console.log("config deactivated")
}

export const configuration = {
    //add custom config here, such as
    "configuration.editor": "typescript",

    "oni.useDefaultConfig": true,
    "oni.bookmarks": ["~/Code"],
    "oni.hideMenu": true,

    "autoClosingPairs.enabled": false,

    "editor.definition.enabled": true,
    "editor.quickInfo.enabled": true,
    "editor.quickInfo.delay": 5000,
    "editor.completions.mode": "oni",

    "editor.fontSize": "16px",
    "editor.fontFamily": "'Fira Code'"
    "editor.fontLigatures": true
    "editor.linePadding": 1,

    "learning.enabled": false,
    "achievements.enabled": false,

    "sidebar.default.open": false,

    "tabs.mode": "buffers",
    "tabs.wrap": false,

    // UI customizations
    "ui.colorscheme": "OneDark",
    "ui.animations.enabled": true,
    "ui.fontSmoothing": "auto"

    "workspace.defaultWorkspace": "/Users/coditva/Code",
}

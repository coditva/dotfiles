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
    "editor.quickInfo.delay": 1000,
    "editor.completions.mode": "native",

    "editor.fontSize": "16px",
    "editor.fontFamily": "FiraCode-Medium"
    "editor.fontLigatures": true
    "editor.linePadding": 0,

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

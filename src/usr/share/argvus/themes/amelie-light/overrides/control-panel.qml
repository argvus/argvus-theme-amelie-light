import QtQuick

QtObject {
    // Accent ------------------------------------------------------------------
    readonly property color accent:          "{{ @accent | hex }}"
    readonly property color accentDim:       "{{ @accent | alpha(0.133) | argb }}"
    readonly property color accentMid:       "{{ @accent | alpha(0.333) | argb }}"
    readonly property color accentFaint:     "{{ @accent | alpha(0.06) | argb }}"
    readonly property color accentLight:     "{{ @accent | hex }}"

    // Foreground --------------------------------------------------------------
    readonly property color fgTitle:         "{{ @accent | hex }}"
    readonly property color fgText:          "{{ @bg | hex }}"     // cream
    readonly property color fgDim:           "{{ @bg | mix(@fg, 0.12) | hex }}"     // secondary text
    readonly property color fgSubtle:        "{{ @bg | mix(@fg, 0.22) | hex }}"     // muted
    readonly property color fgFaint:         "{{ @bg | mix(@fg, 0.45) | hex }}"     // disabled
    readonly property color fgOnAccent:      "{{ @accent | contrast | hex }}"

    // Background --------------------------------------------------------------
    readonly property color bg:              "{{ @fg | hex }}"
    readonly property color bgPanel:         "{{ @fg | alpha(0.96) | argb }}"   // panel with blur
    readonly property color bgCard:          "{{ @fg | mix(@bg, 0.05) | hex }}"   // card bg
    readonly property color bgCardAlt:       "{{ @fg | mix(@bg, 0.08) | hex }}"   // card alt
    readonly property color bgHeader:        "{{ @fg | mix(@bg, 0.11) | hex }}"   // card header
    readonly property color bgItem:          "{{ @bg | alpha(0.08) | argb }}"   // item/row
    readonly property color bgItemHover:     "{{ @bg | alpha(0.13) | argb }}"   // item hover
    readonly property color bgActive:        "{{ @accent | alpha(0.133) | argb }}"

    // Borders -----------------------------------------------------------------
    readonly property color border:          "{{ @accent | alpha(0.133) | argb }}"
    readonly property color borderStrong:    "{{ @accent | alpha(0.333) | argb }}"
    readonly property color borderItem:      "{{ @accent | alpha(0.06) | argb }}"
    readonly property color borderSubtle:    "{{ @fg | mix(@bg, 0.20) | hex }}"     // neutral

    // Scrollbar
    readonly property color scrollbarFg:    "{{ @bg | mix(@fg, 0.30) | hex }}"
    readonly property color scrollbarBg:    "{{ @fg | mix(@bg, 0.05) | hex }}"

    // Status ------------------------------------------------------------------
    readonly property color danger:          "{{ @danger | hex }}"
    readonly property color dangerDim:       "{{ @danger_dim | argb }}"
    readonly property color warn:            "{{ @warn | hex }}"
    readonly property color ok:              "{{ @ok | hex }}"

    // Tipography --------------------------------------------------------------
    readonly property string fontMono:       "IBM Plex Mono"
    readonly property string fontIcon:       "Symbols Nerd Font Mono"

    // Form --------------------------------------------------------------------
    readonly property int radius:            {{ layout.panel_radius }}
    readonly property int radiusPill:        {{ layout.panel_radius_pill }}
    readonly property int radiusSmall:       {{ layout.panel_radius_small }}

    // Animations --------------------------------------------------------------
    readonly property int animFast:          150
    readonly property int animNormal:        220

    // Position margins
    readonly property int marginTop:          {{ layout.panel_margin_top }}
    readonly property int marginBottom:       {{ layout.panel_margin_bottom }}
    readonly property int sidebarWidth:       350
    readonly property int marginRight:        {{ layout.panel_margin_right }}
}

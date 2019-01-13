.include "telestrat.inc"

.export _sound_cockpit

.proc  _sound_cockpit
    ldx #<sound
    ldy #>sound
    BRK_TELEMON XSONPS
    rts
sound:
    .byte 150,0,152,46,4,255,255,112,7,80,0,102,5,65
.endproc



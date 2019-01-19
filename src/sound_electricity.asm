
.include "telestrat.inc"

.export _sound_electricity

.proc  _sound_electricity
    ldx #<sound
    ldy #>sound
    BRK_TELEMON XSONPS
    rts
sound:
    .byte 0,4,0,184,0,3,120,190,12,0,0,0,167,194
.endproc

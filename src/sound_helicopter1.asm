.include "telestrat.inc"

.export _sound_helicopter1

.proc  _sound_helicopter1
    ldx #<sound
    ldy #>sound
    BRK_TELEMON XSONPS
    rts
sound:
    .byte 168,191,0,3,184,191,14,0,0,0,167,194,76,176
.endproc


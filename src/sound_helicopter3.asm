.include "telestrat.inc"

; helicopter 3
.export _sound_helicopter3

.proc  _sound_helicopter3
    ldx #<sound
    ldy #>sound
    BRK_TELEMON XSONPS
    rts
sound:
    .byte 206,108,231,36,137,112,70,182,170,239,83,246,12,165
.endproc

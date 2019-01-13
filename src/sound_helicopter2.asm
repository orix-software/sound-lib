.include "telestrat.inc"

; Un hélico, au loin
.export _sound_helicopter2

.proc  _sound_helicopter2
    ldx #<sound
    ldy #>sound
    BRK_TELEMON XSONPS
    rts
sound:
    .byte 14,136,132,12,140,0,69,173,0,5,208,4,169,192
.endproc

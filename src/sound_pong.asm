.include "telestrat.inc"

.export _sound_pong

.proc  _sound_pong
    ldx #<sound
    ldy #>sound
    BRK_TELEMON XSONPS
    rts
sound:
    .byte $EE,$02,$00,$00,$00,$00,$00,$3E,$10,$00,$00,$D0,$07,$00
.endproc

.include "telestrat.inc"

.export _sound_pchh

.proc  _sound_pchh
    ldx #<sound
    ldy #>sound
    BRK_TELEMON XSONPS
    rts
sound:
    .byte $00,$00,$00,$00,$00,$00,$01,$37,$10,$00,$00,$D6,$0B,$00
.endproc

.include "telestrat.inc"

.export _sound_car_engine

.proc  _sound_car_engine
    ldx #<sound
    ldy #>sound
    BRK_TELEMON XSONPS
    rts
sound:
    .byte 1,5,193,7,7,8,7,8,53,151,47,151,0,152
.endproc



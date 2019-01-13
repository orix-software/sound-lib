.include "telestrat.inc"

.export _sound_plane1

.proc  _sound_plane1
    ldx #<sound
    ldy #>sound
    BRK_TELEMON XSONPS
    rts
sound:
    .byte 32,2,140,0,5,132,14,136,132,12,140,0,69,173
.endproc

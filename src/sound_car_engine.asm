
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


;Dans le cockpit d'un avion : 150,0,152,46,4,255,255,112,7,80,0,102,5,65
;Un avion (turboprop) : 32,2,140,0,5,132,14,136,132,12,140,0,69,173
;Un hélico, au loin : 14,136,132,12,140,0,69,173,0,5,208,4,169,192

;helicopter2 206,108,231,36,137,112,70,182,170,239,83,246,12,165
;PONG : EE 02 00 00 00 00 00 3E 10 00 00 D0 07 00
;PCHH: 00 00 00 00 00 00 01 37 10 00 00 D6 0B 00